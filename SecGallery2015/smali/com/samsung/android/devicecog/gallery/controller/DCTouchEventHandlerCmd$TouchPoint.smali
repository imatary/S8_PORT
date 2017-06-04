.class Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;
.super Ljava/lang/Object;
.source "DCTouchEventHandlerCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPoint"
.end annotation


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;


# direct methods
.method public constructor <init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->this$0:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->mY:F

    return v0
.end method

.method public set(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->mX:F

    iput p2, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->mY:F

    return-void
.end method
