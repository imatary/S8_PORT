.class public abstract Lcom/adobe/internal/xmp/options/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private optionNames:Ljava/util/Map;

.field private options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/options/Options;->optionNames:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/adobe/internal/xmp/options/Options;->assertOptionsValid(I)V

    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/options/Options;->setOptions(I)V

    return-void
.end method

.method private assertOptionsValid(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/Options;->getValidOptions()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int v0, p1, v1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/options/Options;->assertConsistency(I)V

    return-void

    :cond_0
    new-instance v1, Lcom/adobe/internal/xmp/XMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The option bit(s) 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " are invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method protected assertConsistency(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/Options;->getOptions()I

    move-result v0

    check-cast p1, Lcom/adobe/internal/xmp/options/Options;

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/Options;->getOptions()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOption(I)Z
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptions()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    return v0
.end method

.method protected abstract getValidOptions()I
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/Options;->getOptions()I

    move-result v0

    return v0
.end method

.method public setOption(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    return-void

    :cond_0
    iget v0, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOptions(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/adobe/internal/xmp/options/Options;->assertOptionsValid(I)V

    iput p1, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/internal/xmp/options/Options;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
