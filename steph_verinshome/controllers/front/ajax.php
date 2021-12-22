<?php

class Steph_VerinshomeAjaxModuleFrontController extends ModuleFrontController
{
    /**
     * Retourne les verins tries par chape, ressort, longueur, course, et force au format json
     *
     * @return json
     * @throws PrestaShopDatabaseException
     */
    public function initContent()
    {
        $this->ajax = true;
        parent::initContent();

        switch (Tools::getValue('method')) {

            case 'getActuators':
                $chape = Tools::getValue('chape');
                $spring = Tools::getValue('spring');
                $course = Tools::getValue('course');
                $length = Tools::getValue('length');
                $force = Tools::getValue('force');

                $actuatorPhysics = "c{$course},l{$length},f{$force}";

                $allVerins = Db::getInstance()->executeS(
                    'SELECT
                            pp.id_product,
                            ppl.name,
                            pp.price,
                            pp.reference,
                            pp.available_for_order
                        FROM
                            ps_product pp
                        JOIN ps_product_lang ppl ON
                            pp.id_product = ppl.id_product
                        JOIN ps_product_attribute ppa ON
                            ppa.id_product = pp.id_product
                        JOIN ps_product_attribute_combination ppac ON
                            ppac.id_product_attribute = ppa.id_product_attribute
                        JOIN ps_attribute pa ON
                            pa.id_attribute = ppac.id_attribute
                        JOIN ps_attribute_lang pal ON
                            ppac.id_attribute = pal.id_attribute
                        JOIN ps_attribute_group_lang pagl ON
                            pagl.id_attribute_group = pa.id_attribute_group
                        WHERE
                            ppl.id_lang = 1 AND pp.id_category_default = 985 
                        AND pal.name = "' . $actuatorPhysics . '" 
                        AND pagl.name LIKE "%' . $chape . '%"
                        GROUP BY
                            id_product
                 ');

                die(Tools::jsonEncode($allVerins));

            case 'getAvailableLengths':
                $chape = Tools::getValue('chape');
                $spring = Tools::getValue('spring');

                $availableLengths = Db::getInstance()->executeS('
                    SELECT
                        pal.name
                    FROM
                        ps_attribute_lang pal
                    JOIN ps_product_attribute_combination ppac ON
                        ppac.id_attribute = pal.id_attribute
                    JOIN ps_product_attribute ppa ON
                        ppa.id_product_attribute = ppac.id_product_attribute
                    JOIN ps_product pp ON
                        pp.id_product = ppa.id_product
                    JOIN ps_attribute pa ON
                        pa.id_attribute = ppac.id_attribute
                    JOIN ps_attribute_group_lang pagl ON
                        pagl.id_attribute_group = pa.id_attribute_group
                    WHERE
                        pagl.name LIKE "%' . $chape . '%" AND pp.id_category_default = 985
                ');

                die(Tools::jsonEncode($availableLengths));
        }
    }
}
