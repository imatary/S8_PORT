.class public final Lcom/adobe/internal/xmp/options/SerializeOptions;
.super Lcom/adobe/internal/xmp/options/Options;
.source "SerializeOptions.java"


# instance fields
.field private baseIndent:I

.field private indent:Ljava/lang/String;

.field private newline:Ljava/lang/String;

.field private omitVersionAttribute:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/adobe/internal/xmp/options/Options;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->padding:I

    const-string/jumbo v0, "\n"

    iput-object v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string/jumbo v0, "  "

    iput-object v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    iput v1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->baseIndent:I

    iput-boolean v1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/adobe/internal/xmp/options/Options;-><init>(I)V

    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->padding:I

    const-string/jumbo v0, "\n"

    iput-object v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string/jumbo v0, "  "

    iput-object v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    iput v1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->baseIndent:I

    iput-boolean v1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOptions()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;-><init>(I)V

    iget v2, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->baseIndent:I

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setBaseIndent(I)Lcom/adobe/internal/xmp/options/SerializeOptions;

    iget-object v2, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setIndent(Ljava/lang/String;)Lcom/adobe/internal/xmp/options/SerializeOptions;

    iget-object v2, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setNewline(Ljava/lang/String;)Lcom/adobe/internal/xmp/options/SerializeOptions;

    iget v2, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->padding:I

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setPadding(I)Lcom/adobe/internal/xmp/options/SerializeOptions;
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseIndent()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public getEncodeUTF16BE()Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncodeUTF16LE()Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UTF-16BE"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "UTF-16LE"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "UTF-8"

    goto :goto_0
.end method

.method public getExactPacketLength()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIncludeThumbnailPad()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitPacketWrapper()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitVersionAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return v0
.end method

.method public getOmitXmpMetaElement()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public getReadOnlyPacket()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getSort()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCanonicalFormat()Z
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    const/16 v0, 0x3770

    return v0
.end method

.method public setBaseIndent(I)Lcom/adobe/internal/xmp/options/SerializeOptions;
    .locals 0

    iput p1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->baseIndent:I

    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/adobe/internal/xmp/options/SerializeOptions;
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public setNewline(Ljava/lang/String;)Lcom/adobe/internal/xmp/options/SerializeOptions;
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object p0
.end method

.method public setOmitPacketWrapper(Z)Lcom/adobe/internal/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setPadding(I)Lcom/adobe/internal/xmp/options/SerializeOptions;
    .locals 0

    iput p1, p0, Lcom/adobe/internal/xmp/options/SerializeOptions;->padding:I

    return-object p0
.end method

.method public setUseCompactFormat(Z)Lcom/adobe/internal/xmp/options/SerializeOptions;
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->setOption(IZ)V

    return-object p0
.end method
