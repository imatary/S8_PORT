.class Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$7;
.super Ljava/lang/Object;
.source "MultiGridActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->displayCustomDialogue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->finish()V

    return-void
.end method
