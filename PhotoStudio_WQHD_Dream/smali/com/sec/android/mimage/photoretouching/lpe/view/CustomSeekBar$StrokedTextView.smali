.class public Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;
.super Landroid/widget/TextView;
.source "CustomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokedTextView"
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->initAnim()V

    return-void
.end method

.method private initAnim()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->clearAnimation()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mStrokeWidth:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mStrokeWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->mStrokeColor:I

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->semAddStrokeTextEffect(FIF)I

    return-void
.end method
