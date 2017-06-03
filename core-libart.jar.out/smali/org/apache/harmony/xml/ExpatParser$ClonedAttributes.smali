.class Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClonedAttributes"
.end annotation


# static fields
.field private static final EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final length:I

.field private final parserPointer:J

.field private pointer:J


# direct methods
.method static synthetic -get0()Lorg/xml/sax/Attributes;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v2, 0x0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    sput-object v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-void
.end method

.method private constructor <init>(JJI)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    iput-wide p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    iput p5, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return-void
.end method

.method synthetic constructor <init>(JJILorg/apache/harmony/xml/ExpatParser$ClonedAttributes;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatAttributes;->freeAttributes(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return v0
.end method

.method public getParserPointer()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    return-wide v0
.end method

.method public getPointer()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    return-wide v0
.end method
