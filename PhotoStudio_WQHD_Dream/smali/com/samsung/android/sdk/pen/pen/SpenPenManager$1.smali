.class Lcom/samsung/android/sdk/pen/pen/SpenPenManager$1;
.super Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;
.source "SpenPenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->setListener(Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$1;->this$0:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/plugin/framework/SpenPluginManager$PluginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Pen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$1;->this$0:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    # getter for: Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->access$000(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;->onInstalled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUninstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Pen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$1;->this$0:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    # getter for: Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->access$000(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager$InstallListener;->onUninstalled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
