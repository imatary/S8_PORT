.class Lcom/sec/android/app/camera/widget/gl/TickSlider$1;
.super Ljava/lang/Object;
.source "TickSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/TickSlider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGaugeMarkerPositionUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->access$000(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V

    return-void
.end method
