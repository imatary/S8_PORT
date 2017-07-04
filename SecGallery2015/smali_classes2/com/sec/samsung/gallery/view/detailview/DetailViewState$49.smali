.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$49;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil$ShowDeviceToTVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getDeviceToTVUtil()Lcom/sec/android/gallery3d/devicetotv/DeviceToTVUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$49;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShowBarState()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$49;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    return v0
.end method

.method public showDeviceToTvDisconnectIcon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$49;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    return-void
.end method

.method public showDeviceToTvIcon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$49;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    return-void
.end method
