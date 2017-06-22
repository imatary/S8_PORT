.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$1;
.super Ljava/lang/Object;
.source "AfView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setTouchAfPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setVisibility(I)V

    return-void
.end method
