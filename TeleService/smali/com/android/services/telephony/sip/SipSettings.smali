.class public Lcom/android/services/telephony/sip/SipSettings;
.super Landroid/preference/PreferenceActivity;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipSettings$SipPreference;
    }
.end annotation


# static fields
.field private static mOrientation:I


# instance fields
.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mSipListContainer:Landroid/preference/PreferenceCategory;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/services/telephony/sip/SipSettings$SipPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

.field private mSipProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/services/telephony/sip/SipSettings;)Landroid/net/sip/SipManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/services/telephony/sip/SipSettings;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/services/telephony/sip/SipSettings;)Lcom/android/services/telephony/sip/SipPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/services/telephony/sip/SipSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/sip/SipSettings;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->retrieveSipLists()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->updateProfilesStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    return-void
.end method

.method private addPreferenceFor(Landroid/net/sip/SipProfile;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addPreferenceFor, profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/services/telephony/sip/SipSettings$5;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSettings$5;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipSettings$SipPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private addProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addProfile SipProfile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addProfile, cannot set registration listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
    .locals 1

    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$9;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipSettings$9;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageNameFromUid, cannot find name of uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;
    .locals 4

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProfileName(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleProfileClick(Landroid/net/sip/SipProfile;)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    return-void

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0181

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/services/telephony/sip/SipSettings$6;

    invoke-direct {v2, p0, p1}, Lcom/android/services/telephony/sip/SipSettings$6;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const v3, 0x7f0d0183

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SipSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processActiveProfilesFromSipService()V
    .locals 7

    const/4 v4, 0x0

    new-array v0, v4, [Landroid/net/sip/SipProfile;

    :try_start_0
    iget-object v5, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v5}, Landroid/net/sip/SipManager;->getListOfProfiles()[Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->getProfileFromList(Landroid/net/sip/SipProfile;)Landroid/net/sip/SipProfile;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SipManager could not retrieve SIP profiles: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    goto :goto_2

    :cond_1
    return-void
.end method

.method private declared-synchronized retrieveSipLists()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "retrieveSipLists "

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->processActiveProfilesFromSipService()V

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    new-instance v4, Lcom/android/services/telephony/sip/SipSettings$4;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipSettings$4;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v3}, Lcom/android/services/telephony/sip/SipPreferences;->isReceivingCallsEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->addPreferenceFor(Landroid/net/sip/SipProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    iget v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mUid:I

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getCallingUid()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-ne v3, v4, :cond_3

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveSipLists, mSipManager.setRegistrationListener : SipProfile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/sip/SipManager;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_3
    .catch Landroid/net/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retrieveSipLists, cannot set registration listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipSettings;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void
.end method

.method private showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/services/telephony/sip/SipSettings$8;-><init>(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSipEditor(Landroid/net/sip/SipProfile;)V
    .locals 2

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "sip_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/sip/SipSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private unregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/services/telephony/sip/SipSettings$7;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    const-string/jumbo v2, "unregisterProfile"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateProfilesStatus()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipSettings$3;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipSettings$3;-><init>(Lcom/android/services/telephony/sip/SipSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method deleteProfile(Landroid/net/sip/SipProfile;)V
    .locals 3

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/SipSettings$SipPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/SipSettings$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/services/telephony/sip/SipSettings$1;-><init>(Lcom/android/services/telephony/sip/SipSettings;Landroid/content/Intent;I)V

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipSettings$1;->start()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sget v3, Lcom/android/services/telephony/sip/SipSettings;->mOrientation:I

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sput v2, Lcom/android/services/telephony/sip/SipSettings;->mOrientation:I

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/SipSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;

    new-instance v1, Lcom/android/services/telephony/sip/SipPreferences;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    new-instance v1, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x7f0400ea

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->setContentView(I)V

    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "sip_account_list"

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mSipListContainer:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/sip/SipSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v1, 0x7f0d017a

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipSettings;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/services/telephony/sip/SipSettings;->startSipEditor(Landroid/net/sip/SipProfile;)V

    return v2

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipSettings;->onBackPressed()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipSettings;->updateProfilesStatus()V

    return-void
.end method
