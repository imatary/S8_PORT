.class public Lcom/sec/ims/settings/ImsProfile;
.super Ljava/lang/Object;
.source "ImsProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/settings/ImsProfile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected static final chatServices:[Ljava/lang/String;

.field protected static final rcsServices:[Ljava/lang/String;

.field protected static final sNetworkNameSet:[Ljava/lang/String;

.field protected static final tapiServices:[Ljava/lang/String;

.field protected static final volteServices:[Ljava/lang/String;


# instance fields
.field protected mAddPhoneExtension:I

.field protected mAddPresListDummy:Ljava/lang/String;

.field protected mAmrNbMode:Ljava/lang/String;

.field protected mAmrWbMode:Ljava/lang/String;

.field protected mAmrnbbePayload:I

.field protected mAmrnboaPayload:I

.field protected mAmropenPayload:I

.field protected mAmrwbbePayload:I

.field protected mAmrwboaPayload:I

.field protected mAnonymousFetch:Z

.field protected mAppId:Ljava/lang/String;

.field protected mAudioAS:I

.field protected mAudioAvpf:I

.field protected mAudioCapabilities:Ljava/lang/String;

.field protected mAudioCodec:Ljava/lang/String;

.field protected mAudioCodecMode:Ljava/lang/String;

.field protected mAudioPortEnd:I

.field protected mAudioPortStart:I

.field protected mAudioRR:I

.field protected mAudioRS:I

.field protected mAudioRtcpXr:I

.field protected mAudioSrtp:I

.field protected mAudioVideoTx:I

.field protected mAuthAlgorithm:Ljava/lang/String;

.field protected mAuthName:Ljava/lang/String;

.field protected mAvailCacheExpiry:I

.field protected mBadEventExpiry:I

.field protected mBitrate:I

.field protected mCapCacheExp:I

.field protected mCapPollInterval:I

.field protected mClosedGroupChat:Z

.field protected mConferenceDialogType:Ljava/lang/String;

.field protected mConferenceReferUriAsserted:Ljava/lang/String;

.field protected mConferenceReferUriType:Ljava/lang/String;

.field protected mConferenceSubscribe:Ljava/lang/String;

.field protected mConferenceUri:Ljava/lang/String;

.field protected mConferenceUseAnonymousUpdate:Ljava/lang/String;

.field protected mDefaultMcc:Ljava/lang/String;

.field protected mDefaultMnc:Ljava/lang/String;

.field protected final mDeregTimeoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayFormat:Ljava/lang/String;

.field protected mDisplayFormatHevc:Ljava/lang/String;

.field protected mDisplayName:Ljava/lang/String;

.field protected mDomain:Ljava/lang/String;

.field protected mDtmfCodecMode:Ljava/lang/String;

.field protected mDtmfMode:I

.field protected mDtmfNbPayload:I

.field protected mDtmfWbPayload:I

.field protected mEmm:I

.field protected mEnableAvSync:Z

.field protected mEnableBwm:Ljava/lang/String;

.field protected mEnableBwmDefault:Ljava/lang/String;

.field protected mEnableCpAudioPath:I

.field protected mEnableEvsCodec:I

.field protected mEnableG711:Z

.field protected mEnableGruu:I

.field protected mEnableMwi:I

.field protected mEnableRtcpOnActiveCall:Z

.field protected mEnableScr:Z

.field protected mEnableStatus:I

.field protected mEncAlgorithm:Ljava/lang/String;

.field protected mEvsBandwidthReceive:Ljava/lang/String;

.field protected mEvsBandwidthSend:Ljava/lang/String;

.field protected mEvsBitRateReceive:Ljava/lang/String;

.field protected mEvsBitRateSend:Ljava/lang/String;

.field protected mEvsChannelAwareReceive:Ljava/lang/String;

.field protected mEvsChannelRecv:Ljava/lang/String;

.field protected mEvsChannelSend:Ljava/lang/String;

.field protected mEvsCodecModeRequest:Ljava/lang/String;

.field protected mEvsDefaultBandwidth:Ljava/lang/String;

.field protected mEvsDefaultBitrate:Ljava/lang/String;

.field protected mEvsDiscontinuousTransmission:Ljava/lang/String;

.field protected mEvsDtxRecv:Ljava/lang/String;

.field protected mEvsHeaderFull:Ljava/lang/String;

.field protected mEvsModeSwitch:Ljava/lang/String;

.field protected mEvsPayload:I

.field protected mExpireHeader:I

.field protected mExtImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtendedPublishTimer:I

.field protected mExternalGtty:I

.field protected mFramerate:I

.field protected mH263QcifPayload:I

.field protected mH264720pPayload:I

.field protected mH264720plPayload:I

.field protected mH264CifPayload:I

.field protected mH264CiflPayload:I

.field protected mH264QvgaPayload:I

.field protected mH264QvgalPayload:I

.field protected mH264VgaPayload:I

.field protected mH264VgalPayload:I

.field protected mHasEmergencySupport:Z

.field protected mId:I

.field protected mIgnoreRtcpTimeoutOnHoldCall:Z

.field protected mImpi:Ljava/lang/String;

.field protected mImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInviteTimeout:I

.field protected mIpVer:I

.field protected mIsAllowedOnRoaming:Z

.field protected mIsFullCodecOfferRequired:Z

.field protected mIsGzipEnabled:Z

.field protected mIsIpSecEnabled:Z

.field protected mIsMsrpBearerUsed:Z

.field protected mIsRcsTelephonyFeatureTagRequired:Z

.field protected mIsRegEnabled:Z

.field protected mIsUicclessEmergency:Z

.field protected mIsVceConfigEnabled:Z

.field protected mIsWifiPreConditionEnabled:Z

.field protected mLogRtpPacketsToFile:I

.field protected final mMap:Landroid/content/ContentValues;

.field protected mMaxPTime:I

.field protected mMcc:Ljava/lang/String;

.field protected mMdmnType:Ljava/lang/String;

.field protected mMnc:Ljava/lang/String;

.field protected mMnoName:Ljava/lang/String;

.field protected mMssSize:I

.field protected mMwiSubscribeExpiry:I

.field protected mName:Ljava/lang/String;

.field protected mNeedAutoconfig:Z

.field protected mNeedNaptrDns:Z

.field protected mNeedOmadmConfig:Z

.field protected final mNetworkEnabledMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mPTime:I

.field protected mPacketizatoinMode:Ljava/lang/String;

.field protected mPassword:Ljava/lang/String;

.field protected mPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPcscfPreference:I

.field protected mPdn:Ljava/lang/String;

.field protected mPollListSubExp:I

.field protected mPrecondtionInitialSendrecv:Z

.field protected mPriority:I

.field protected mPublishErrRetryTimer:I

.field protected mPublishExpiry:I

.field protected mPublishTimer:I

.field protected mPullingServerUri:Ljava/lang/String;

.field protected mRPort:I

.field protected mRcsProfile:Ljava/lang/String;

.field protected mRegExpires:I

.field protected mRegRetryBaseTime:I

.field protected mRegRetryMaxTime:I

.field protected mRegistrationAlgorithm:Ljava/lang/String;

.field protected mRemoteUriType:Ljava/lang/String;

.field protected mReregiOnRatChange:I

.field protected mRingbackTimer:I

.field protected mRingingTimer:I

.field protected mRtcpTimeout:I

.field protected mRtpTimeout:I

.field protected mSaClientPort:I

.field protected mSaServerPort:I

.field protected mScmVersion:I

.field protected mSelfPort:I

.field protected final mServiceSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSessionExpires:I

.field protected mSessionRefreshMethod:I

.field protected mSessionRefresher:Ljava/lang/String;

.field protected mSetDefaultUri:I

.field protected mSipMobility:I

.field protected mSipPort:I

.field protected mSipUriOnly:Z

.field protected mSipUserAgent:Ljava/lang/String;

.field protected mSmscSet:Ljava/lang/String;

.field protected mSubscribeForReg:I

.field protected mSubscribeListSyncEnabled:I

.field protected mSubscribeMaxEntry:I

.field protected mSubscriberTimer:I

.field protected mSupport183ForIr92v9Precondition:Z

.field protected mSupport3gppUssi:Z

.field protected mSupportIncomingHistoryInfo:Z

.field protected mSupportMergeVideoConference:Z

.field protected mSupportUpgradeVideoConference:Z

.field protected mSupportedGeolocationPhase:I

.field protected mTextPort:I

.field protected mTimer1:I

.field protected mTimer2:I

.field protected mTimer4:I

.field protected mTimerA:I

.field protected mTimerB:I

.field protected mTimerC:I

.field protected mTimerD:I

.field protected mTimerE:I

.field protected mTimerF:I

.field protected mTimerG:I

.field protected mTimerH:I

.field protected mTimerI:I

.field protected mTimerJ:I

.field protected mTimerK:I

.field protected mTransport:I

.field protected mTtyType:I

.field protected mUse183OnProgressIncoming:Z

.field protected mUseCompactHeader:Z

.field protected mUsePrecondition:I

.field protected mUseProvisionalResponse100rel:Z

.field protected mVideoAS:I

.field protected mVideoAvpf:I

.field protected mVideoCapabilities:Z

.field protected mVideoCodec:Ljava/lang/String;

.field protected mVideoPortEnd:I

.field protected mVideoPortStart:I

.field protected mVideoRR:I

.field protected mVideoRS:I

.field protected mVideoRtcpXr:I

.field protected mVideoSrtp:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "mmtel"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mmtel-video"

    aput-object v1, v0, v4

    const-string/jumbo v1, "smsip"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ss"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cdpn"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "options"

    aput-object v1, v0, v3

    const-string/jumbo v1, "presence"

    aput-object v1, v0, v4

    const-string/jumbo v1, "im"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ft"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ft_http"

    aput-object v1, v0, v7

    const-string/jumbo v1, "slm"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "is"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "vs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "euc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "gls"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "profile"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "ec"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ft_tapi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ish_tapi"

    aput-object v1, v0, v4

    const-string/jumbo v1, "vsh_tapi"

    aput-object v1, v0, v5

    const-string/jumbo v1, "capability_tapi"

    aput-object v1, v0, v6

    const-string/jumbo v1, "chat_tapi"

    aput-object v1, v0, v7

    const-string/jumbo v1, "fileupload_tapi"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "gls_tapi"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "multimediasession_tapi"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "im"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ft"

    aput-object v1, v0, v4

    const-string/jumbo v1, "slm"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ft_http"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lte"

    aput-object v1, v0, v3

    const-string/jumbo v1, "hspa"

    aput-object v1, v0, v4

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v5

    const-string/jumbo v1, "gsm"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ehrpd"

    aput-object v1, v0, v7

    const-string/jumbo v1, "tdscdma"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "wifi"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->sNetworkNameSet:[Ljava/lang/String;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/settings/ImsProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x1388

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableStatus:I

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mName:Ljava/lang/String;

    const-string/jumbo v0, "DEFAULT"

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMnoName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mMcc:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mMnc:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMcc:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMnc:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mImpi:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mImpuList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExtImpuList:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mPdn:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mServiceSetMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNetworkEnabledMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDeregTimeoutMap:Ljava/util/Map;

    iput v1, p0, Lcom/sec/ims/settings/ImsProfile;->mPriority:I

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthName:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mPassword:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfList:Ljava/util/List;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfPreference:I

    const/16 v0, 0x13c4

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipPort:I

    iput v3, p0, Lcom/sec/ims/settings/ImsProfile;->mTransport:I

    iput v3, p0, Lcom/sec/ims/settings/ImsProfile;->mIpVer:I

    iput v1, p0, Lcom/sec/ims/settings/ImsProfile;->mMssSize:I

    const-string/jumbo v0, "MD5"

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegistrationAlgorithm:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsIpSecEnabled:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsWifiPreConditionEnabled:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mUseCompactHeader:Z

    const-string/jumbo v0, "NotSupport"

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMdmnType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsVceConfigEnabled:Z

    iput v4, p0, Lcom/sec/ims/settings/ImsProfile;->mSaClientPort:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSaServerPort:I

    const-string/jumbo v0, "aes-cbc"

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEncAlgorithm:Ljava/lang/String;

    const-string/jumbo v0, "hmac-md5-96"

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthAlgorithm:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mHasEmergencySupport:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsUicclessEmergency:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedNaptrDns:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedAutoconfig:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedOmadmConfig:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupport3gppUssi:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsMsrpBearerUsed:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportIncomingHistoryInfo:Z

    iput v1, p0, Lcom/sec/ims/settings/ImsProfile;->mReregiOnRatChange:I

    const-string/jumbo v0, "sip"

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRemoteUriType:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer2:I

    iput v4, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer4:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerA:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerB:I

    const v0, 0x2bf20

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerC:I

    const/16 v0, 0x7d00

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerD:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerE:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerF:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerG:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerH:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer4:I

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerI:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerJ:I

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer4:I

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerK:I

    iput v3, p0, Lcom/sec/ims/settings/ImsProfile;->mRPort:I

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsRegEnabled:Z

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mDomain:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mAppId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mClosedGroupChat:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsRcsTelephonyFeatureTagRequired:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsFullCodecOfferRequired:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportMergeVideoConference:Z

    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportUpgradeVideoConference:Z

    iput v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTtyType:I

    iput v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportedGeolocationPhase:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMap:Landroid/content/ContentValues;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->makeFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private makeFromParcel(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMcc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMnc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMcc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMnc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mImpi:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mImpuList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExtImpuList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPdn:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mServiceSetMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mServiceSetMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNetworkEnabledMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mNetworkEnabledMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPriority:I

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfPreference:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTransport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMssSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIpVer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegistrationAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsIpSecEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsWifiPreConditionEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUseCompactHeader:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSaClientPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSaServerPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEncAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthAlgorithm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer4:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerD:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerE:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerG:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerI:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerJ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerK:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mHasEmergencySupport:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsUicclessEmergency:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsRegEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedNaptrDns:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedAutoconfig:Z

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDeregTimeoutMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mDeregTimeoutMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAppId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mClosedGroupChat:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipUserAgent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipMobility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSessionRefreshMethod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPublishExpiry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExtendedPublishTimer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsGzipEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBadEventExpiry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAvailCacheExpiry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mCapCacheExp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAnonymousFetch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPublishTimer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPublishErrRetryTimer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPollListSubExp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscribeMaxEntry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mCapPollInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegRetryBaseTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegRetryMaxTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSessionExpires:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRingingTimer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRingbackTimer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscriberTimer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscribeForReg:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUsePrecondition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPullingServerUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRemoteUriType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceSubscribe:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceDialogType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceReferUriType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceReferUriAsserted:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceUseAnonymousUpdate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportMergeVideoConference:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportUpgradeVideoConference:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPrecondtionInitialSendrecv:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsRcsTelephonyFeatureTagRequired:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsFullCodecOfferRequired:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegExpires:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRtpTimeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRtcpTimeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIgnoreRtcpTimeoutOnHoldCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableRtcpOnActiveCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableAvSync:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableCpAudioPath:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mLogRtpPacketsToFile:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBitrate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioVideoTx:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioCodecMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mFramerate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrNbMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrWbMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioPortStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoPortStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTextPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioPortEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoPortEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEmm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExternalGtty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioAvpf:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioSrtp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoAvpf:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoSrtp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioAS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioRS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioRR:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoAS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoRS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoRR:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrnbbePayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrnboaPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrwbbePayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrwboaPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmropenPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264720pPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264720plPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264VgaPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264VgalPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264QvgaPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264QvgalPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264CifPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264CiflPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH263QcifPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfNbPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfWbPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayFormat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayFormatHevc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoCodec:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableG711:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoCapabilities:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPacketizatoinMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mInviteTimeout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableMwi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMwiSubscribeExpiry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipUriOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableGruu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExpireHeader:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSetDefaultUri:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscribeListSyncEnabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAddPhoneExtension:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfCodecMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableBwm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableBwmDefault:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioCapabilities:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAddPresListDummy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSelfPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mScmVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSessionRefresher:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMdmnType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mReregiOnRatChange:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_16

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedOmadmConfig:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_17

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableScr:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_18

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsAllowedOnRoaming:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTtyType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMaxPTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_19

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsVceConfigEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioRtcpXr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoRtcpXr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableEvsCodec:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDiscontinuousTransmission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDtxRecv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsHeaderFull:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsModeSwitch:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsChannelSend:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsChannelRecv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsChannelAwareReceive:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsCodecModeRequest:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBitRateSend:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBitRateReceive:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBandwidthSend:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBandwidthReceive:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsPayload:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDefaultBandwidth:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDefaultBitrate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSmscSet:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportedGeolocationPhase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1a

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupport3gppUssi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1b

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsMsrpBearerUsed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1c

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportIncomingHistoryInfo:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1d

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUseProvisionalResponse100rel:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1e

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUse183OnProgressIncoming:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1f

    :goto_1f
    iput-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupport183ForIr92v9Precondition:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto/16 :goto_f

    :cond_10
    move v0, v2

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    move v0, v2

    goto/16 :goto_12

    :cond_13
    move v0, v2

    goto/16 :goto_13

    :cond_14
    move v0, v2

    goto/16 :goto_14

    :cond_15
    move v0, v2

    goto/16 :goto_15

    :cond_16
    move v0, v2

    goto/16 :goto_16

    :cond_17
    move v0, v2

    goto/16 :goto_17

    :cond_18
    move v0, v2

    goto/16 :goto_18

    :cond_19
    move v0, v2

    goto/16 :goto_19

    :cond_1a
    move v0, v2

    goto :goto_1a

    :cond_1b
    move v0, v2

    goto :goto_1b

    :cond_1c
    move v0, v2

    goto :goto_1c

    :cond_1d
    move v0, v2

    goto :goto_1d

    :cond_1e
    move v0, v2

    goto :goto_1e

    :cond_1f
    move v1, v2

    goto :goto_1f
.end method

.method private readStringFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/sec/ims/settings/ImsProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->clone()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    iget v2, v0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    return v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget v2, p0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    add-int/lit8 v1, v2, 0x1f

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImsProfile [mId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnableStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mPdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceSetMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mServiceSetMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNetworkEnabledMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mNetworkEnabledMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeregTimeoutMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mDeregTimeoutMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPcscfList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPcscfPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSipPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSipPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTransport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTransport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", MSS_SIZE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mMssSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIpVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIpVer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRegistrationAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mRegistrationAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsIpSecEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsIpSecEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNeedNaptrDns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedNaptrDns:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNeedAutoconfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedAutoconfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSaClientPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSaClientPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSaServerPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSaServerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimer1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimer2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimer4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimerF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", defaultMccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDisplayName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReregiOnRatChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mReregiOnRatChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAllowedOnRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsAllowedOnRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTtyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/settings/ImsProfile;->mTtyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsVceConfigEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mIsVceConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMdmnType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mMdmnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSupport3gppUssi ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupport3gppUssi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRcsProfile ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSupportIncomingHistoryInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportIncomingHistoryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMcc:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMnc:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMcc:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDefaultMnc:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mImpi:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mImpuList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExtImpuList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDomain:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mServiceSetMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNetworkEnabledMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPassword:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPcscfPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTransport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMssSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIpVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegistrationAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsIpSecEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsWifiPreConditionEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUseCompactHeader:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSaClientPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSaServerPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEncAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAuthAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimer4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerG:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerJ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTimerK:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mHasEmergencySupport:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsUicclessEmergency:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsRegEnabled:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedNaptrDns:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedAutoconfig:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDeregTimeoutMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAppId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mClosedGroupChat:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipMobility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSessionRefreshMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPublishExpiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExtendedPublishTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsGzipEnabled:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBadEventExpiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAvailCacheExpiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mCapCacheExp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAnonymousFetch:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPublishTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPublishErrRetryTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPollListSubExp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscribeMaxEntry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mCapPollInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegRetryBaseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegRetryMaxTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSessionExpires:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRingingTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRingbackTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscriberTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscribeForReg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUsePrecondition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPullingServerUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRemoteUriType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceSubscribe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceDialogType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceReferUriType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceReferUriAsserted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mConferenceUseAnonymousUpdate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportMergeVideoConference:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportUpgradeVideoConference:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPrecondtionInitialSendrecv:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsRcsTelephonyFeatureTagRequired:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsFullCodecOfferRequired:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRegExpires:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRtpTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRtcpTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIgnoreRtcpTimeoutOnHoldCall:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableRtcpOnActiveCall:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableAvSync:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableCpAudioPath:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mLogRtpPacketsToFile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioVideoTx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioCodecMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mFramerate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrNbMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrWbMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioPortStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoPortStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTextPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioPortEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoPortEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEmm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExternalGtty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioAvpf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioSrtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoAvpf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoSrtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioAS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioRS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioRR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoAS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoRS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoRR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrnbbePayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrnboaPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrwbbePayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmrwboaPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAmropenPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264720pPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264720plPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264VgaPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264VgalPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264QvgaPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264QvgalPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264CifPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH264CiflPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mH263QcifPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfNbPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfWbPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDisplayFormatHevc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableG711:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoCapabilities:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPacketizatoinMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mInviteTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableMwi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMwiSubscribeExpiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSipUriOnly:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableGruu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mExpireHeader:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSetDefaultUri:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSubscribeListSyncEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAddPhoneExtension:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mDtmfCodecMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableBwm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableBwmDefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioCapabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAddPresListDummy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSelfPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mScmVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSessionRefresher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMdmnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mReregiOnRatChange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mNeedOmadmConfig:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableScr:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsAllowedOnRoaming:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mTtyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mPTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mMaxPTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsVceConfigEnabled:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mAudioRtcpXr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mVideoRtcpXr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEnableEvsCodec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDiscontinuousTransmission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDtxRecv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsHeaderFull:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsModeSwitch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsChannelSend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsChannelRecv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsChannelAwareReceive:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsCodecModeRequest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBitRateSend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBitRateReceive:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBandwidthSend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsBandwidthReceive:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsPayload:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDefaultBandwidth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mEvsDefaultBitrate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSmscSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportedGeolocationPhase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupport3gppUssi:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mIsMsrpBearerUsed:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupportIncomingHistoryInfo:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUseProvisionalResponse100rel:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mUse183OnProgressIncoming:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/settings/ImsProfile;->mSupport183ForIr92v9Precondition:Z

    if-eqz v0, :cond_1f

    :goto_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto/16 :goto_f

    :cond_10
    move v0, v2

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    move v0, v2

    goto/16 :goto_12

    :cond_13
    move v0, v2

    goto/16 :goto_13

    :cond_14
    move v0, v2

    goto/16 :goto_14

    :cond_15
    move v0, v2

    goto/16 :goto_15

    :cond_16
    move v0, v2

    goto/16 :goto_16

    :cond_17
    move v0, v2

    goto/16 :goto_17

    :cond_18
    move v0, v2

    goto/16 :goto_18

    :cond_19
    move v0, v2

    goto/16 :goto_19

    :cond_1a
    move v0, v2

    goto :goto_1a

    :cond_1b
    move v0, v2

    goto :goto_1b

    :cond_1c
    move v0, v2

    goto :goto_1c

    :cond_1d
    move v0, v2

    goto :goto_1d

    :cond_1e
    move v0, v2

    goto :goto_1e

    :cond_1f
    move v1, v2

    goto :goto_1f
.end method
