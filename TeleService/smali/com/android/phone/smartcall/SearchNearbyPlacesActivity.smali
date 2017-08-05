.class public Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;
.super Landroid/app/Activity;
.source "SearchNearbyPlacesActivity.java"


# instance fields
.field private final REQUEST:I

.field private mActionBar:Landroid/app/ActionBar;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field mContext:Landroid/content/Context;

.field private mDescriptionText:Landroid/widget/TextView;

.field private mShowPrivacyNotice:Landroid/widget/TextView;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->isAlreadyShowPrivacyNotice()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->startPrivacyNoticeActivity(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->withdrawPrivacyNotice()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->REQUEST:I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x7f100259

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v0, 0x7f10025a

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v0, 0x7f100258

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarView:Landroid/view/View;

    const v0, 0x7f100260

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mDescriptionText:Landroid/widget/TextView;

    const v0, 0x7f100261

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mShowPrivacyNotice:Landroid/widget/TextView;

    const-string/jumbo v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mDescriptionText:Landroid/widget/TextView;

    const v1, 0x7f0d0c72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;-><init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$2;-><init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mShowPrivacyNotice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mShowPrivacyNotice:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mShowPrivacyNotice:Landroid/widget/TextView;

    new-instance v1, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$3;-><init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAlreadyShowPrivacyNotice()Z
    .locals 6

    const-string/jumbo v3, "content://com.samsung.contacts.settings/privacy_notice_enabled_before"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v3, "SearchPlaceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAlreadyShowPrivacyNotice : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v1

    :cond_1
    const-string/jumbo v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isContactSupportWithdraw()Z
    .locals 8

    const-string/jumbo v4, "com.samsung.android.contacts"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "privacy_notice_withdraw"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_0
    const-string/jumbo v5, "SearchPlaceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "contact support withdraw : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v5, "SearchPlaceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read meta data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showWithdrawDialog()V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v3, "SearchPlaceActivity"

    const-string/jumbo v4, "show withdraw dialog"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0c6e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0c76

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$4;

    invoke-direct {v3, p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$4;-><init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V

    const v4, 0x7f0d0c77

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$5;

    invoke-direct {v3, p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$5;-><init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V

    const v4, 0x7f0d0327

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startPrivacyNoticeActivity(Z)V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "SearchPlaceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delete privacy notice Agree button : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.contacts"

    const-string/jumbo v0, "com.samsung.contacts.activities.PrivacyNoticeActivity"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "disable_bottom_button"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SearchPlaceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ActivityNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private withdrawPrivacyNotice()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "SearchPlaceActivity"

    const-string/jumbo v3, "withdraw privacy notice"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "content://com.samsung.contacts.settings/privacy_notice_enabled_before"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "enabledBefore"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "search_nearby_places"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->updateTurnOnStatus()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "SearchPlaceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "search_nearby_places"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->updateTurnOnStatus()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "search_nearby_places"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SearchPlaceActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0400d4

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f0d024e

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d028a

    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getTnCAgreed()Z

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->initLayout()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f0d0c75

    invoke-virtual {p0, v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->finish()V

    return v2

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->showWithdrawDialog()V

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "Searchforplacesnearby"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->isContactSupportWithdraw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->isAlreadyShowPrivacyNotice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return v2

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "SearchPlaceActivity"

    const-string/jumbo v1, "onResume"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->updateTurnOnStatus()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/ia/SearchNearbyPlacesActivityStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/SearchNearbyPlacesActivityStateListener;-><init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V

    iput-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Searchforplacesnearby"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Searchforplacesnearby"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "Searchforplacesnearby"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mShowPrivacyNotice:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->isContactSupportWithdraw()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public perFormClickSubAppBarView(Ljava/lang/Boolean;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public updateTurnOnStatus()V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "search_nearby_places"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "SearchPlaceActivity"

    const-string/jumbo v4, "updateTurnOnStatus"

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c3a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c3b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
