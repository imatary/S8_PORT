.class public Lcom/android/phone/operator/usa/AssistedDialingActivity;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static final RESET_COUNTRY_DETAILS:Landroid/net/Uri;

.field private static final UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

.field public static area:Ljava/lang/String;

.field public static nationalnumberlength:Ljava/lang/String;


# instance fields
.field cr:Landroid/content/ContentResolver;

.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Landroid/preference/EditTextPreference;

.field private mIDD:Landroid/preference/EditTextPreference;

.field private mNDD:Landroid/preference/EditTextPreference;

.field private mNationalNumberLength:Landroid/preference/EditTextPreference;

.field private mReferenceText:Landroid/preference/PreferenceScreen;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field public mSubAppBarView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const-string/jumbo v0, "content://assisteddialing/mcc_otalookup/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    const-string/jumbo v0, "content://assisteddialing/mcc_otalookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    sput-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->area:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->nationalnumberlength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private displayHelp()V
    .locals 6

    const v5, 0x7f0d0829

    const v3, 0x7f0d026e

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0287

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0837

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;-><init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V

    const v3, 0x7f0d0835

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getReferenceCountryAndSet()V
    .locals 14

    const-string/jumbo v0, "AssistedDialingActivity"

    const-string/jumbo v1, "getReferenceCountry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v6, :cond_0

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    if-nez v12, :cond_1

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_3

    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_area_code"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_4

    if-eqz v9, :cond_c

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_idd"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    if-eqz v13, :cond_d

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_ndd"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_6

    if-eqz v8, :cond_e

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_country_code"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_7

    if-eqz v12, :cond_f

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_nnl"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    :goto_6
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :cond_9
    const-string/jumbo v0, "AssistedDialingActivity"

    const-string/jumbo v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "AssistedDialingActivity"

    const-string/jumbo v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_area_code"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d083b

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d0839

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d083a

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d0838

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assisted_dialing_nnl"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    const v1, 0x7f0d083c

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_6
.end method

.method private resetDetails()V
    .locals 5

    const-string/jumbo v1, "AssistedDialingActivity"

    const-string/jumbo v2, "resetDetails"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/phone/operator/usa/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/phone/operator/usa/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getReferenceCountryAndSet()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "AssistedDialingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDetails uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v2, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "AssistedDialingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCheckedChanged isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d026d

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d0302

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "assisted_dialing"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0a39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "assisted_dialing"

    if-eqz p2, :cond_2

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0a3a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f040010

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "AssistedDialingActivity"

    const-string/jumbo v5, "support Zero UI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f040012

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->setContentView(I)V

    const v4, 0x7f10003c

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v4, 0x7f10003d

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v4, 0x7f10003b

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarView:Landroid/view/View;

    const/4 v2, 0x0

    const-string/jumbo v4, "global_network_cdma_gsm_enable"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v5, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;-><init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v4, "AssistedDialingActivity"

    const-string/jumbo v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move-object v1, p0

    const-string/jumbo v4, "button_current_country_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "Area_city_code"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "IDD_prefix"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "NDD_prefix"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "country_code"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    const-string/jumbo v4, "National_number_length"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string/jumbo v4, "config_hide_status_bar"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0d026d

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0276

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string/jumbo v0, "AssistedDialingActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const v1, 0x7f0d026d

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0282

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->resetDetails()V

    return v2

    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0277

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->displayHelp()V

    return v2

    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0275

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->onBackPressed()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f1002e3 -> :sswitch_0
        0x7f1002e4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "AssistedDialingActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;->pause()V

    :cond_0
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AssistedDialing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v2, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const-string/jumbo v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange preference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing_reference_country"

    const/16 v5, 0xd4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing_area_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "area_city_code"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v3, 0x7f0d026e

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d027b

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing_idd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "idd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing_ndd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "ndd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing_country_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "countrycode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing_nnl"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "national_num_len"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const v6, 0x7f0d0287

    const v5, 0x7f0d026d

    const v4, 0x7f0d026e

    const-string/jumbo v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick preference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d030e

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assisted_dialing_area_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d030c

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assisted_dialing_idd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d030d

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assisted_dialing_ndd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d030b

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assisted_dialing_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d030f

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assisted_dialing_nnl"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const v2, 0x7f1002e3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020194

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v2, 0x7f1002e4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020193

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v0, "AssistedDialingActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d026d

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getReferenceCountryAndSet()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f0c00d8

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/FontUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0a39

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/ia/AssistedDialingActivityStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/AssistedDialingActivityStateListener;-><init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AssistedDialing"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AssistedDialing"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AssistedDialing"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0a3a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
