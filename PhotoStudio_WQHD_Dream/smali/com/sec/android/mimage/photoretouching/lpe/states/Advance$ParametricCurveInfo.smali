.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
.super Ljava/lang/Object;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParametricCurveInfo"
.end annotation


# instance fields
.field private darks:I

.field private highThres:I

.field private highlights:I

.field private lights:I

.field private lowThres:I

.field private midThres:I

.field private shadows:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;IIIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lowThres:I

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->midThres:I

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highThres:I

    return-void
.end method


# virtual methods
.method public getCopyObject()Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;
    .locals 9

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lowThres:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->midThres:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highThres:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;IIIIIII)V

    return-object v0
.end method

.method public getCurveInfoAsIntArray()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lowThres:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->midThres:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highThres:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getDarks()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    return v0
.end method

.method public getHighThres()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highThres:I

    return v0
.end method

.method public getHighlights()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    return v0
.end method

.method public getLights()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    return v0
.end method

.method public getLowThres()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lowThres:I

    return v0
.end method

.method public getMidThres()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->midThres:I

    return v0
.end method

.method public getShadows()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    return v0
.end method

.method public isModified()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lowThres:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->midThres:I

    const/16 v0, 0xc0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highThres:I

    return-void
.end method

.method public updateValue(ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$9;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$states$Advance$PARAMETRIC_THRESHOLD:[I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_THRESHOLD;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lowThres:I

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->midThres:I

    goto :goto_0

    :pswitch_2
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highThres:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateValue(ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$9;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$states$Advance$PARAMETRIC_ZONE:[I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->shadows:I

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->darks:I

    goto :goto_0

    :pswitch_2
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->lights:I

    goto :goto_0

    :pswitch_3
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->highlights:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
