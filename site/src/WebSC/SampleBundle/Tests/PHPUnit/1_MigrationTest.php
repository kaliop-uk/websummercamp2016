<?php

namespace WebSC\SampleBundle\Tests\PHPUnit;

class MigrationTest extends FunctionalTestCase
{
    /**
     * NB: this test is executed in the CLI container
     */
    public function testArticleClass()
    {
        $fieldTypeIdentifier = 'article';
        $fieldIdentifier = 'image';
        $cts = $this->repo->getContentTypeService();
        $articleType = $cts->loadContentTypeByIdentifier($fieldTypeIdentifier);
        $fieldDef = $articleType->getFieldDefinition($fieldIdentifier);

        $this->assertNotNull($fieldDef, "Field  '$fieldIdentifier' not found in fieldType '$fieldTypeIdentifier'");
    }
}
