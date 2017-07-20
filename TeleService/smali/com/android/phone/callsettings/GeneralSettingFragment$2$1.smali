.class Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;
.super Ljava/lang/Object;
.source "GeneralSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/GeneralSettingFragment$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/GeneralSettingFragment$2;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/GeneralSettingFragment$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;->this$1:Lcom/android/phone/callsettings/GeneralSettingFragment$2;

    iput p2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;->this$1:Lcom/android/phone/callsettings/GeneralSettingFragment$2;

    iget-object v1, v1, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    iget v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;->val$newState:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap7(Lcom/android/phone/callsettings/GeneralSettingFragment;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
