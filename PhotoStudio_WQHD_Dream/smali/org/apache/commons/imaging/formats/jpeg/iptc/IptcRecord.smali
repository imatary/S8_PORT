.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;
.super Ljava/lang/Object;
.source "IptcRecord.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bytes:[B

.field public final iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->bytes:[B

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->bytes:[B

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIptcTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    return-object v0
.end method
