.class Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;
.super Landroid/os/Handler;
.source "ProjectPreview2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/preview/ProjectPreview2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewHandler"
.end annotation


# instance fields
.field private final previewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/sec/android/app/ve/preview/ProjectPreview2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;->previewRef:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;->previewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->removePreviewCover()V

    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$000(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$100(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$200(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->access$300(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->removePreviewCover()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
