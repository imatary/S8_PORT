.class public Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchZone"
.end annotation


# instance fields
.field private mControlPointIndex:I

.field private mId:I

.field private mPoint:Landroid/graphics/PointF;

.field private mPriority:I

.field private mRect:Landroid/graphics/RectF;

.field private mType:I

.field private mZoneSize:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->makeTouchZone(IFLandroid/graphics/PointF;I)V

    return-void
.end method

.method public constructor <init>(IFLandroid/graphics/PointF;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->makeTouchZone(IFLandroid/graphics/PointF;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mId:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mId:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I

    return v0
.end method

.method private makeTouchZone(IFLandroid/graphics/PointF;I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mZoneSize:F

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I

    goto :goto_0

    :pswitch_1
    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPoint:Landroid/graphics/PointF;

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPoint:Landroid/graphics/PointF;

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPriority:I

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mPoint:Landroid/graphics/PointF;

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getControlPointIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mControlPointIndex:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mId:I

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->mType:I

    return v0
.end method
