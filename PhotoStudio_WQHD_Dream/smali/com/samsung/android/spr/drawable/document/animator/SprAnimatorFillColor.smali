.class public Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;
.super Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;
.source "SprAnimatorFillColor.java"


# instance fields
.field private from:I

.field private to:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;-><init>(B)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;-><init>(B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->from:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->to:I

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->setIntValues([I)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->from:I

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->to:I

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->from:I

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->to:I

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->init()V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->from:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->to:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public updateValues(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->to:I

    iput v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->fillColor:I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorFillColor;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->fillColor:I

    goto :goto_0
.end method
