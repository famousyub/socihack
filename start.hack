

function start() : void {

}
require_once(__DIR__."/vendor/hh_autoload.php");
final class :a:post extends :x:element {
  attribute :a;

  use XHPHelpers;

  protected function render(): XHPRoot {
    $id = $this->getID();

    $anchor = <a>{$this->getChildren()}</a>;
    $form = (
      <form
        id={$id}
        method="post"
        action={$this->:href}
        target={$this->:target}
        class="postLink">
        {$anchor}
      </form>
    );

    $this->transferAllAttributes($anchor);
    $anchor->setAttribute(
      'onclick',
      'document.getElementById("'.$id.'").submit(); return false;',
    );
    $anchor->setAttribute('href', '#');

    return $form;
  }
}

<<__EntryPoint>>
function intro_examples_a_a_post() {
  start();


  $get_link = <a href="http://www.example.com">I'm a normal link</a>;
  $post_link =
    <a:post href="http://www.example.com">I make a POST REQUEST</a:post>;

  echo $get_link;
  echo "\n";
  echo $post_link;
}
