.class Lcom/sec/android/gallery3d/ui/EnvironmentTagView$1;
.super Landroid/os/Handler;
.source "EnvironmentTagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/EnvironmentTagView;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/EnvironmentTagView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView$1;->this$0:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EnvironmentTagView$1;->this$0:Lcom/sec/android/gallery3d/ui/EnvironmentTagView;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->hide(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/EnvironmentTagView;->access$000(Lcom/sec/android/gallery3d/ui/EnvironmentTagView;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
