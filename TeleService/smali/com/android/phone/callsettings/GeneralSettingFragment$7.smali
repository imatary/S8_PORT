.class Lcom/android/phone/callsettings/GeneralSettingFragment$7;
.super Ljava/lang/Object;
.source "GeneralSettingFragment.java"

# interfaces
.implements Lcom/android/phone/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/GeneralSettingFragment;->initDropDownPhoneAppMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$7;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "GeneralSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DropdownPhoneAppMode val : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$7;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap0(Lcom/android/phone/callsettings/GeneralSettingFragment;I)Z

    const/4 v1, 0x1

    return v1
.end method
