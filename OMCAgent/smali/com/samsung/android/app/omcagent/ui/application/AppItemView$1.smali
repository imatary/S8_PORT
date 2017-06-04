.class Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/application/AppItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemView;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView$1;->this$0:Lcom/samsung/android/app/omcagent/ui/application/AppItemView;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->appItem:Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->requestCancel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
