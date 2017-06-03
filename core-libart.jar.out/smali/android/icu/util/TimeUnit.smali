.class public Landroid/icu/util/TimeUnit;
.super Landroid/icu/util/MeasureUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = -0x27699d2cbfbcc814L


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/TimeUnit;->index:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget v0, p0, Landroid/icu/util/TimeUnit;->index:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/util/TimeUnit;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_4
    sget-object v0, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_5
    sget-object v0, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_6
    sget-object v0, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Landroid/icu/util/TimeUnit;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/util/TimeUnit;

    sget-object v1, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Landroid/icu/util/TimeUnit;->type:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/util/TimeUnit;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
