.class final Landroid/icu/util/MeasureUnit$MeasureUnitProxy;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MeasureUnitProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x364588070e86861eL


# instance fields
.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    invoke-interface {p1, v1, v3, v0}, Ljava/io/ObjectInput;->read([BII)I

    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    return-void
.end method
