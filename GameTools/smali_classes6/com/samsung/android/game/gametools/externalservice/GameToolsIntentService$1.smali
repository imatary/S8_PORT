.class Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$1;
.super Ljava/lang/Object;
.source "GameToolsIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$1;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->showFloatingWindowPermissionNotification(Landroid/content/Context;)V

    return-void
.end method
