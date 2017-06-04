.class Lcom/sec/samsung/gallery/view/allview/AllViewState$12;
.super Ljava/lang/Object;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/allview/AllViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$12;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$12;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # setter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I
    invoke-static {v0, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3702(Lcom/sec/samsung/gallery/view/allview/AllViewState;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState$12;->this$0:Lcom/sec/samsung/gallery/view/allview/AllViewState;

    # getter for: Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->access$3800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "photoViewColCnt"

    invoke-static {v0, v1, p2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
