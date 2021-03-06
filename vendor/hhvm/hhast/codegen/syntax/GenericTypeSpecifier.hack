/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<63fce2719adbf4a5cb13e27997f551cd>>
 */
namespace Facebook\HHAST;
use namespace Facebook\TypeAssert;
use namespace HH\Lib\Dict;
/* HHAST_IGNORE_ALL[5607] 5607 is ignored because of false positives when comparing a generic to a typed value */
/* HHAST_IGNORE_ALL[5624] HHAST_IGNORE_ALL[5639] 5624 and 5639 are ignored because they insist on using co(tra)variant generics. Could this break external consumers? */

<<__ConsistentConstruct>>
final class GenericTypeSpecifier
  extends Node
  implements ISimpleCreationSpecifier, ITypeSpecifier {

  const string SYNTAX_KIND = 'generic_type_specifier';

  private Node $_class_type;
  private TypeArguments $_argument_list;

  public function __construct(
    Node $class_type,
    TypeArguments $argument_list,
    ?__Private\SourceRef $source_ref = null,
  ) {
    $this->_class_type = $class_type;
    $this->_argument_list = $argument_list;
    parent::__construct($source_ref);
  }

  <<__Override>>
  public static function fromJSON(
    dict<arraykey, mixed> $json,
    string $file,
    int $initial_offset,
    string $source,
    string $_type_hint,
  ): this {
    $offset = $initial_offset;
    $class_type = Node::fromJSON(
      ($json['generic_class_type']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $class_type = $class_type as nonnull;
    $offset += $class_type->getWidth();
    $argument_list = Node::fromJSON(
      ($json['generic_argument_list']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'TypeArguments',
    );
    $argument_list = $argument_list as nonnull;
    $offset += $argument_list->getWidth();
    $source_ref = shape(
      'file' => $file,
      'source' => $source,
      'offset' => $initial_offset,
      'width' => $offset - $initial_offset,
    );
    return new static(
      /* HH_IGNORE_ERROR[4110] */ $class_type,
      /* HH_IGNORE_ERROR[4110] */ $argument_list,
      $source_ref,
    );
  }

  <<__Override>>
  public function getChildren(): dict<string, Node> {
    return dict[
      'class_type' => $this->_class_type,
      'argument_list' => $this->_argument_list,
    ]
      |> Dict\filter_nulls($$);
  }

  <<__Override>>
  public function rewriteChildren<Tret as ?Node>(
    (function(Node, vec<Node>): Tret) $rewriter,
    vec<Node> $parents = vec[],
  ): this {
    $parents[] = $this;
    $class_type = $rewriter($this->_class_type, $parents);
    $argument_list = $rewriter($this->_argument_list, $parents);
    if (
      $class_type === $this->_class_type &&
      $argument_list === $this->_argument_list
    ) {
      return $this;
    }
    return new static($class_type as Node, $argument_list as TypeArguments);
  }

  public function getClassTypeUNTYPED(): ?Node {
    return $this->_class_type;
  }

  public function withClassType(Node $value): this {
    if ($value === $this->_class_type) {
      return $this;
    }
    return new static($value, $this->_argument_list);
  }

  public function hasClassType(): bool {
    return true;
  }

  /**
   * @return QualifiedName | XHPClassNameToken | NameToken | StringToken
   */
  public function getClassType(): Node {
    return $this->_class_type;
  }

  /**
   * @return QualifiedName | XHPClassNameToken | NameToken | StringToken
   */
  public function getClassTypex(): Node {
    return $this->getClassType();
  }

  public function getArgumentListUNTYPED(): ?Node {
    return $this->_argument_list;
  }

  public function withArgumentList(TypeArguments $value): this {
    if ($value === $this->_argument_list) {
      return $this;
    }
    return new static($this->_class_type, $value);
  }

  public function hasArgumentList(): bool {
    return true;
  }

  /**
   * @return TypeArguments
   */
  public function getArgumentList(): TypeArguments {
    return TypeAssert\instance_of(TypeArguments::class, $this->_argument_list);
  }

  /**
   * @return TypeArguments
   */
  public function getArgumentListx(): TypeArguments {
    return $this->getArgumentList();
  }
}
