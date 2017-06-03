.class final Landroid/icu/text/MessageFormat$AttributeAndPosition;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeAndPosition"
.end annotation


# instance fields
.field private key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private limit:I

.field private start:I

.field private value:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p2, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    iput p3, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    iput p4, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return-void
.end method
