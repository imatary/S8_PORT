.class public Lcom/android/phone/intprefix/InternationalCallPrefixPreference;
.super Landroid/preference/PreferenceActivity;
.source "InternationalCallPrefixPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/intprefix/InternationalCallPrefixPreference$1;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private key:Ljava/lang/String;

.field private listPref:Landroid/preference/PreferenceGroup;

.field private mDiaLogMassage:I

.field private mSelectedKey:Ljava/lang/String;

.field private mVolatilePref:Landroid/preference/Preference;

.field private sIntlCode:Ljava/lang/String;

.field private sIntlName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mVolatilePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->deleteContent(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->launchEditDialog(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/android/phone/intprefix/InternationalPrefixPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->saveListData(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/android/phone/intprefix/InternationalPrefixPreference;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;[ZI[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->setArrayDeleteData([ZI[II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->showAlertDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mDiaLogMassage:I

    iput-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$1;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)V

    iput-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->handler:Landroid/os/Handler;

    return-void
.end method

.method private CheckAndUpdateSP()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x6

    if-gt v2, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "InternationalCallPrefixPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete !! : international_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "InternationalCallPrefixPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete !! : international_access_code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WORLD CALL"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "009130010"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->updateSP(I)V

    :cond_4
    return-void
.end method

.method private SetCurrentInxSP(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "international_access_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v2, "InternationalCallPrefixPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set nCurrentIndex =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "international_access_index"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteContent(Landroid/preference/Preference;)V
    .locals 6

    move-object v2, p1

    check-cast v2, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-virtual {v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->deleteSP(I)V

    const-string/jumbo v3, "InternationalCallPrefixPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteContent : pref.getKey() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listSortingSP(I)V

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const v3, 0x7f0d0b4e

    invoke-virtual {p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-virtual {v0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->setSelectedKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setChecked()V

    return-void
.end method

.method private deleteSP(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "international_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "international_access_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private fillList()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getSelectedKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-direct {v2, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setKey(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setPersistent(Z)V

    invoke-virtual {v2, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v2, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setOnInternationalPrefixPreferenceLongClickListener(Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setSelectable(Z)V

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setChecked()V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private getSelectedKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "international_dialing_assist_idd_prefix"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertContent()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const-string/jumbo v2, "InternationalCallPrefixPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertContent : nPrefCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->key:Ljava/lang/String;

    const-string/jumbo v2, "InternationalCallPrefixPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertContent : key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-direct {v1, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setPersistent(Z)V

    invoke-virtual {v1, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1, p0}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setOnInternationalPrefixPreferenceLongClickListener(Lcom/android/phone/intprefix/InternationalPrefixPreference$OnInternationalPrefixPreferenceLongClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setSelectable(Z)V

    iget-object v2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->updateSP(I)V

    const v2, 0x7f0d0b4c

    invoke-virtual {p0, v2}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private launchEditDialog(Landroid/preference/Preference;)V
    .locals 10

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040080

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100183

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v6, 0x7f100185

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v6, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/widget/EditText;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0b45

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$3;

    invoke-direct {v6, p0, v3, v2, p1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$3;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/preference/Preference;)V

    const v7, 0x7f0d041e

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d02c7

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v6, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$4;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$4;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/widget/EditText;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private listSortingSP(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move v1, p1

    :goto_0
    const/4 v3, 0x6

    if-gt v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "international_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "international_access_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "international_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "international_access_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "international_access_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "international_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "international_access_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v3, "InternationalCallPrefixPreference"

    const-string/jumbo v4, "completed to update after delete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveListData(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/android/phone/intprefix/InternationalPrefixPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->insertContent()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->updateContent(Lcom/android/phone/intprefix/InternationalPrefixPreference;)V

    goto :goto_0
.end method

.method private setArrayDeleteData([ZI[II)V
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getCount()I

    move-result v6

    new-array v2, v6, [I

    new-array v3, v6, [Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getSelectedKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    const/4 v10, 0x0

    aput v10, v2, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_access_code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string/jumbo v10, "InternationalCallPrefixPreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setArrayDeleteData,  arraySetData["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "], position = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", arraySetCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", arraySetName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p4

    if-ge v4, v0, :cond_4

    aget v10, p3, v4

    if-ge p2, v10, :cond_1

    if-eqz v9, :cond_3

    :cond_1
    :goto_1
    aget-boolean v10, p1, v4

    if-nez v10, :cond_2

    aget v10, p3, v4

    aput v10, v2, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_access_code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, p3, v4

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, p3, v4

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    aput p2, v2, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_access_code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_4
    if-nez v9, :cond_5

    aput p2, v2, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_access_code"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "international_name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    move v8, v5

    add-int/lit8 v10, p2, 0x1

    if-ne v10, v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    if-ge v5, v6, :cond_6

    invoke-direct {p0, v2, v3, v1, v8}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->setDeleteData([I[Ljava/lang/String;[Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_6
    const v10, 0x7f0d0b52

    invoke-virtual {p0, v10}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->displayToast(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setDeleteData([I[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    aget v5, p1, v1

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "international_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "international_access_code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, p2, v1

    if-eqz v5, :cond_0

    aget-object v5, p3, v1

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "international_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "international_access_code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p3, v1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "international_access_index"

    add-int/lit8 v6, p4, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v5, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, p4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-virtual {v4}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->setSelectedKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setChecked()V

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->fillList()V

    const v5, 0x7f0d0b4e

    invoke-virtual {p0, v5}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private setSelectedKey(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "international_dialing_assist_idd_prefix"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showAlertDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b50

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d02ca

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$5;

    invoke-direct {v2, p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$5;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogDelete(Landroid/preference/Preference;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v0, "InternationalCallPrefixPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAlertDialogDelete : international_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    new-array v4, v0, [I

    invoke-virtual {p0, v4}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getDeleteList([I)[Ljava/lang/CharSequence;

    move-result-object v5

    const v0, 0x7f0d0b8c

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->setDiaLogMassage(I)V

    if-eqz v5, :cond_0

    array-length v0, v5

    new-array v3, v0, [Z

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getDiaLogMassage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$8;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$8;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;[Z)V

    invoke-virtual {v6, v5, v3, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d02ca

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/preference/Preference;[Z[I[Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d02c7

    invoke-virtual {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private updateContent(Lcom/android/phone/intprefix/InternationalPrefixPreference;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->setChanged(Z)V

    invoke-virtual {p1}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->updateSP(I)V

    const v1, 0x7f0d0b4d

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private updateSP(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "international_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "international_access_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->sIntlCode:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateSelectedInxSP()V
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "international_access_index"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "InternationalCallPrefixPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get nCurrentIndex =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v6, :cond_0

    const-string/jumbo v3, "international_access_index"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v3, "InternationalCallPrefixPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "confirm nCurrentIndex =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "international_access_index"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "international_access_index"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method protected getAnnexaPreferences()Landroid/content/SharedPreferences;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.android.phone"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "network_service_settings"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "InternationalCallPrefixPreference"

    const-string/jumbo v4, "InternationalCallPrefixPreference.getSharedPreferences() NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getDeleteList([I)[Ljava/lang/CharSequence;
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getSelectedKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getSelectedKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    const-string/jumbo v9, "InternationalCallPrefixPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getDeleteList : position"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v5, :cond_3

    if-eq v3, v6, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "international_name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    aput-object v8, v1, v4

    aput v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "preferences data error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_3
    return-object v1
.end method

.method protected final getDiaLogMassage()I
    .locals 1

    iget v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mDiaLogMassage:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTranscriptMode(I)V

    const-string/jumbo v1, "idds_list"

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->updateSelectedInxSP()V

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->CheckAndUpdateSP()V

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/16 v3, 0x3ea

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mVolatilePref:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0d0b4a

    invoke-virtual {p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mVolatilePref:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0d0b4b

    invoke-virtual {p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mVolatilePref:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;

    invoke-direct {v4, p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$6;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$7;

    invoke-direct {v3, p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$7;-><init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0b4f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0b4a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0b4b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.intprefix.InternationalDialingAssist"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->finish()V

    return v5

    :cond_0
    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_0
    invoke-direct {p0, v6}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->launchEditDialog(Landroid/preference/Preference;)V

    return v5

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->launchEditDialog(Landroid/preference/Preference;)V

    return v5

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->showAlertDialogDelete(Landroid/preference/Preference;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v5, "InternationalCallPrefixPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange(): Preference - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", newValue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    check-cast v2, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->setSelectedKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getAnnexaPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x6

    if-gt v1, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "international_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "InternationalCallPrefixPreference"

    const-string/jumbo v6, "matching inx find!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->SetCurrentInxSP(I)V

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v5, "InternationalCallPrefixPreference"

    const-string/jumbo v6, "Can\'t find current Inx. So default value set!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->SetCurrentInxSP(I)V

    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->finish()V

    :goto_1
    return v8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    return v5
.end method

.method public onPreferenceLongClick(Landroid/preference/Preference;)Z
    .locals 8

    const/16 v7, 0x3ea

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "InternationalCallPrefixPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceChange(): Preference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", getKey - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, p1, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    move-object v2, p1

    check-cast v2, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    invoke-virtual {v2}, Lcom/android/phone/intprefix/InternationalPrefixPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, "WORLD CALL"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v6, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    return v5

    :cond_1
    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mVolatilePref:Landroid/preference/Preference;

    invoke-virtual {p0, v7}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->removeDialog(I)V

    invoke-virtual {p0, v7}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->showDialog(I)V

    return v6

    :cond_2
    return v5
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->getSelectedKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->listPref:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/intprefix/InternationalPrefixPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const-string/jumbo v6, "WORLD CALL"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    const-string/jumbo v0, "2"

    iget-object v5, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "InternationalCallPrefixPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPrepareOptionsMenu getListView().getCount() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    if-ne v4, v8, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5

    :cond_1
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    if-le v4, v8, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    if-ne v4, v10, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->fillList()V

    return-void
.end method

.method protected final setDiaLogMassage(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->mDiaLogMassage:I

    return-void
.end method
