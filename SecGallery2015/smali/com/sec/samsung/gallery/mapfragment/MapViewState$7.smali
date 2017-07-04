.class Lcom/sec/samsung/gallery/mapfragment/MapViewState$7;
.super Ljava/lang/Object;
.source "MapViewState.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewState;->getHoverListenerForZoomButtons()Landroid/view/View$OnHoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$7;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$3200(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
