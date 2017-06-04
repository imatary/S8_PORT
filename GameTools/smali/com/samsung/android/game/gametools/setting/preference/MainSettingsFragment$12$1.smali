.class Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12$1;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12$1;->this$1:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12$1;->this$1:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$12;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameToolsClickable:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$602(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;Z)Z

    return-void
.end method
