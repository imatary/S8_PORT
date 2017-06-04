.class public Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;
.super Landroid/os/Binder;
.source "GameToolsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object v0
.end method
