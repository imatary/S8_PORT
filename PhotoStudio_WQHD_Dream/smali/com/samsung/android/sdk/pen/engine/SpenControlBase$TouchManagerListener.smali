.class Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;
.super Ljava/lang/Object;
.source "SpenControlBase.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V

    return-void
.end method


# virtual methods
.method public onHoverEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleHoverEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    return-void
.end method

.method public onTouchDownEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleTouchDownEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public onTouchMoveEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleTouchMoveEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    return-void
.end method

.method public onTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$TouchManagerListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    return-void
.end method
