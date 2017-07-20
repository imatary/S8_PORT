.class public Lcom/android/phone/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DefaultRingtonePreference$1;
    }
.end annotation


# static fields
.field private static mPickedUri:Ljava/lang/String;


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mResultListener:Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;

.field private mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

.field private mSimIndex:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/DefaultRingtonePreference;->mPickedUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/DefaultRingtonePreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimIndex:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DefaultRingtonePreference;->mPickedUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    iput v3, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimIndex:I

    new-instance v2, Lcom/android/phone/DefaultRingtonePreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/DefaultRingtonePreference$1;-><init>(Lcom/android/phone/DefaultRingtonePreference;)V

    iput-object v2, p0, Lcom/android/phone/DefaultRingtonePreference;->mResultListener:Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-ne v2, v4, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-le v2, v4, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v1, :cond_2

    :cond_4
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/android/phone/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0
.end method

.method public static setPickedUri(Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DefaultRingtonePreference;->mPickedUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-ne p2, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onMusicPickerChosen(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/phone/DefaultRingtonePreference;->mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->finish()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "from"

    const-string/jumbo v1, "call_setting_ringtones"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "neutral_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0993

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz p1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "title"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/phone/RingtoneRecommender;

    invoke-direct {v8}, Lcom/android/phone/RingtoneRecommender;-><init>()V

    iget-object v0, p0, Lcom/android/phone/DefaultRingtonePreference;->mResultListener:Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;

    invoke-virtual {v8, v7, v0}, Lcom/android/phone/RingtoneRecommender;->doExtract(Ljava/lang/String;Lcom/android/phone/RingtoneRecommender$OnHighlightResultListener;)V

    invoke-virtual {v8}, Lcom/android/phone/RingtoneRecommender;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/phone/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v8}, Lcom/android/phone/RingtoneRecommender;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v9

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DefaultRingtonePreference;->mRingtoneKeytoneSettings:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    iput p2, p0, Lcom/android/phone/DefaultRingtonePreference;->mSimIndex:I

    return-void
.end method
