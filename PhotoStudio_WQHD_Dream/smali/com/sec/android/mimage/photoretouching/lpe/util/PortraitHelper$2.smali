.class Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$2;
.super Ljava/lang/Object;
.source "PortraitHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->updateUI(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
