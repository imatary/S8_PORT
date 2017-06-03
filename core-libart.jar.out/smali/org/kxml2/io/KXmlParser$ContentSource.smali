.class Lorg/kxml2/io/KXmlParser$ContentSource;
.super Ljava/lang/Object;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentSource"
.end annotation


# instance fields
.field private final buffer:[C

.field private final limit:I

.field private final next:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private final position:I


# direct methods
.method static synthetic -get0(Lorg/kxml2/io/KXmlParser$ContentSource;)[C
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    return-object v0
.end method

.method static synthetic -get1(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .locals 1

    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    return v0
.end method

.method static synthetic -get2(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;
    .locals 1

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    return-object v0
.end method

.method static synthetic -get3(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .locals 1

    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    return v0
.end method

.method constructor <init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    iput-object p2, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    iput p3, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    iput p4, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    return-void
.end method
