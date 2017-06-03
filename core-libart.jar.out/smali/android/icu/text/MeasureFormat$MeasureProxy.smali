.class Landroid/icu/text/MeasureFormat$MeasureProxy;
.super Ljava/lang/Object;
.source "MeasureFormat.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53ba9df5cf4d9362L


# instance fields
.field private formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Landroid/icu/util/ULocale;

.field private numberFormat:Landroid/icu/text/NumberFormat;

.field private subClass:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iput-object p3, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    iput p4, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    return-void
.end method

.method private createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v0, Landroid/icu/text/TimeUnitFormat;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v2, v1}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, v2}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v0, v1, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat$MeasureProxy;->createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->-wrap0(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Missing number format."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Missing optional values map."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
