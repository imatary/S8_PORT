.class public Lcom/android/phone/settings/AccountSelectionPreference;
.super Landroid/preference/ListPreference;
.source "AccountSelectionPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;
    }
.end annotation


# instance fields
.field private mAccounts:[Landroid/telecom/PhoneAccountHandle;

.field private final mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

.field private mShowSelectionInSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/AccountSelectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    iput-object p1, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v0, v2, v1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v2, p0, v0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AccountSelectionPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccountSelectionPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v2, p0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v0, p0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    return-void
.end method

.method public setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/TelecomManager;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/telecom/PhoneAccountHandle;

    invoke-interface {p2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telecom/PhoneAccountHandle;

    iput-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v5, v6

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "unknown"

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v2

    iget-object v7, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    const v8, 0x7f0d034c

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    aput-object v6, v7, v1

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v6, v6, v1

    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aput-object p4, v6, v1

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/AccountSelectionPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/AccountSelectionPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/AccountSelectionPreference;->setValueIndex(I)V

    iget-boolean v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v5

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/AccountSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
