.class Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;
.super Ljava/lang/Object;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/PhoneAccountSettingsFragment;->initAccountList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telecom/PhoneAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/telecom/PhoneAccount;Landroid/telecom/PhoneAccount;)I
    .locals 11

    const/4 v9, 0x4

    const/4 v10, -0x1

    const/4 v6, 0x0

    invoke-virtual {p1, v9}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    invoke-virtual {p2, v9}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_5

    const/4 v6, -0x1

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-static {v9}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->-get1(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v7

    iget-object v9, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-static {v9}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->-get1(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v8

    if-eq v7, v10, :cond_1

    if-eq v8, v10, :cond_1

    iget-object v9, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-static {v9}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->-get0(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)Landroid/telephony/SubscriptionManager;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-static {v10}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->-get0(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)Landroid/telephony/SubscriptionManager;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v10

    if-ge v9, v10, :cond_6

    const/4 v6, -0x1

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    :cond_2
    if-nez v6, :cond_3

    iget-object v9, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->-wrap0(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->this$0:Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->-wrap0(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->hashCode()I

    move-result v9

    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->hashCode()I

    move-result v10

    sub-int v6, v9, v10

    :cond_4
    return v6

    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/telecom/PhoneAccount;

    check-cast p2, Landroid/telecom/PhoneAccount;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;->compare(Landroid/telecom/PhoneAccount;Landroid/telecom/PhoneAccount;)I

    move-result v0

    return v0
.end method
