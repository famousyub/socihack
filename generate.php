<?hh
require_once('vendor/autoload.php');

use Facebook\HackCodegen\{
  CodegenFileType,
  HackCodegenConfig,
  HackCodegenFactory,
  HackBuilderValues
};

function make_script(): void {
  $cg = new HackCodegenFactory(
    new HackCodegenConfig(__DIR__),
  );

  $cg->codegenFile('script.php')
    ->setFileType(CodegenFileType::HACK_PARTIAL)
    ->setShebangLine('#!/usr/bin/env hhvm')
    ->setPseudoMainHeader(
      'require_once("vendor/autoload.php");',
    )
    ->addFunction(
      $cg->codegenFunction('main')
        ->setReturnType('void')
        ->setBody(
          $cg->codegenHackBuilder()
            ->startManualSection('greeting')
            ->addAssignment(
              '$greeting',
              "Hello, world!",
              HackBuilderValues::export(),
            )
            ->endManualSection()
            ->addLine(
              'printf("%s\n", $greeting);'
            )
            ->getCode(),
        ),
    )
    ->setPseudoMainFooter(
      'main();',
    )
    ->save();
}

make_script();
