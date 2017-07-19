.class Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;
.super Ljava/lang/Object;
.source "AppItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->access$000(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->setIsExpand(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
