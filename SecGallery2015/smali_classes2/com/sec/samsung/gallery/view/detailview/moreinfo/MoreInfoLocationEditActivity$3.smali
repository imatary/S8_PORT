.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$3;
.super Ljava/lang/Object;
.source "MoreInfoLocationEditActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->initZoomButtons(Lcom/google/android/gms/maps/MapFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
