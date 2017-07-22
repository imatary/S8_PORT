.class public Lcom/android/phone/emergencydialer/EmergencyContactItem;
.super Landroid/widget/FrameLayout;
.source "EmergencyContactItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

.field private static final synthetic -com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I


# instance fields
.field private final INVALID_LONG_ID:J

.field private final LOG_TAG:Ljava/lang/String;

.field private mCheckBox:Landroid/view/View;

.field private mContactText:Landroid/widget/TextView;

.field private mContactTextContainer:Landroid/widget/FrameLayout;

.field private mDeletable:Z

.field private mId:J

.field private mImageButton:Landroid/widget/ImageButton;

.field private mInstance:Lcom/android/phone/emergencydialer/EmergencyContactItem;

.field private mItemCheckBox:Landroid/widget/CheckBox;

.field private mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

.field private mLookupKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

.field private mNumber:Ljava/lang/String;

.field private mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoId:I

.field private mRemoveButton:Landroid/widget/ImageButton;

.field private mRippleView:Landroid/view/View;

.field private mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;


# direct methods
.method static synthetic -get0(Lcom/android/phone/emergencydialer/EmergencyContactItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItem;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mInstance:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->values()[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT_LIST:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->values()[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mLookupKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iput-object p0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mInstance:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mLookupKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iput-object p0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mInstance:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mLookupKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iput-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iput-object p0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mInstance:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    return-void
.end method

.method private addEmergencyContact(I)V
    .locals 5

    const-string/jumbo v2, "EmergencyContactItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addEmergencyContact : position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent.action.INTERACTION_ICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "emergency_contact_postion"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "finish_picker_group_activity"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "emergency_contact_sync_contact"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "maxRecipientCount"

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_MAX_COUNT:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "existingRecipientCount"

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->getEmergencyContactCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "emergency_contact_sync_contact"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0996

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private addEmergencyService()V
    .locals 8

    const-string/jumbo v4, "EmergencyContactItem"

    const-string/jumbo v5, "addEmergencyService : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/emergencydialer/EmergencyContactItem$8;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem$8;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d096d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/widget/EditText;)V

    const v6, 0x7f0d02ca

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/emergencydialer/EmergencyContactItem$10;

    invoke-direct {v5, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$10;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    const v6, 0x7f0d02c7

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0, v1, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    return-void
.end method

.method private getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, p2, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xffff01

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "EmergencyContactItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCircledBitmap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method private getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "EmergencyContactItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCircledDrawable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private init(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    iput-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method private placeCall()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "tel"

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "emergency_contact_sync_contact"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "emergency_contact_sync_contact"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "emergency_contact_item"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/phone/emergencydialer/EmergencyContactItem$6;

    invoke-direct {v2, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$6;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "emergency_contact_sync_contact"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/phone/emergencydialer/EmergencyContactItem$7;

    invoke-direct {v2, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$7;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setContactImage(Landroid/graphics/Bitmap;I)V
    .locals 6

    const v5, 0x7f0c0082

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    const-string/jumbo v3, "emergency_contact_sync_contact"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :goto_0
    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0

    :cond_4
    const v3, 0x7f020073

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setContactText()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    const v1, 0x7f020073

    invoke-direct {p0, v3, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setContactImage(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private setEmergencyCallListImage()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d04c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/android/phone/emergencydialer/EmergencyContactItem$11;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/phone/emergencydialer/EmergencyContactItem$11;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateContactItem()V
    .locals 2

    const-string/jumbo v0, "EmergencyContactItem"

    const-string/jumbo v1, "updateContactItem : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateNormalScreen()V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateRemoveScreen()V

    :cond_0
    return-void
.end method

.method private updateNormalScreen()V
    .locals 8

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRemoveButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRemoveButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const-string/jumbo v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    sget-object v7, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v3, v7, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    if-eqz v2, :cond_5

    move v3, v5

    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setEnabled(Z)V

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v4}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_3
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_2

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v4, 0x7f0d096c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f02008d

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setContactImage(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f02008e

    goto :goto_4

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v1, 0x7f020075

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v3, "emergency_contact_sync_contact"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    const v4, 0x7f020076

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "emergency_contact_sync_contact"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    :cond_8
    invoke-direct {p0, v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setContactImage(Landroid/graphics/Bitmap;I)V

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setContactText()V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setEmergencyCallListImage()V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateRemoveScreen()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRemoveButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRemoveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    const v3, 0x7f100111

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "EmergencyContactItem"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f10002e

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d04c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactText:Landroid/widget/TextView;

    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mContactTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/phone/emergencydialer/EmergencyContactItem$1;

    invoke-direct {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$1;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    new-instance v1, Lcom/android/phone/emergencydialer/EmergencyContactItem$2;

    invoke-direct {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$2;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/emergencydialer/EmergencyContactItem$3;

    invoke-direct {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$3;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRippleView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;

    invoke-direct {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRemoveButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mRemoveButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/emergencydialer/EmergencyContactItem$5;

    invoke-direct {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem$5;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public removeEmergencyContact(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v2, "content://com.android.contacts/emergency"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->init(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateNormalScreen()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    iput-wide p2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    iput-object p4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    iput p6, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mPhotoId:I

    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    new-instance v0, Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;-><init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/content/ContentResolver;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "data15"

    aput-object v5, v4, v1

    const-string/jumbo v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/EmergencyContactItem$ContactImageAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    iput-wide p2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mId:J

    iput-object p4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mDeletable:Z

    iput-object p6, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method public setParent(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    return-void
.end method

.method public setParent(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    return-void
.end method

.method public updateContactItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method public updateEmergencyContact(I)V
    .locals 3

    const v2, 0x7f0d0211

    const-string/jumbo v0, "EmergencyContactItem"

    const-string/jumbo v1, "updateEmergencyContact..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mScreenType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->placeCall()V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0212

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d028c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->addEmergencyService()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mItemType:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT_LIST:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->launchEmergencyContactList(Landroid/content/Context;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d028b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->launchEmergencyContactList(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->addEmergencyContact(I)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0289

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mParent:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->notifyCheckChanged()V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem;->mNewParent:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->notifyCheckChanged()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
