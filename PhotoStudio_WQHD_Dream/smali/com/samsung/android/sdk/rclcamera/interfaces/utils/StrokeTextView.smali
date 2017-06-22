.class public Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStrokeColor:I

.field private mStrokeEnable:Z

.field private mStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeEnable:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeEnable:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeEnable:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/interfaces/R$styleable;->StrokeTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/rclcamera/interfaces/R$styleable;->StrokeTextView_textStroke:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeEnable:Z

    sget v1, Lcom/samsung/android/sdk/rclcamera/interfaces/R$styleable;->StrokeTextView_textStrokeWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeWidth:F

    sget v1, Lcom/samsung/android/sdk/rclcamera/interfaces/R$styleable;->StrokeTextView_textStrokeColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->mStrokeColor:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
