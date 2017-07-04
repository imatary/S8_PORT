.class Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;
.super Ljava/lang/Object;
.source "SLinkViewState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$400(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->createRegisteredDevicesListActivityIntent()Landroid/content/Intent;

    move-result-object v8

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$500(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v1, "SLinkViewState"

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState$3;->this$0:Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;->access$600(Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x4b0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f12024b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
