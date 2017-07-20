.class public Lcom/android/phone/utils/VoiceMailProviderSettings;
.super Ljava/lang/Object;
.source "VoiceMailProviderSettings.java"


# instance fields
.field public forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field public voicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants$VoicemailSettings;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants$VoicemailSettings;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    iget-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v2, v1

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants$VoicemailSettings;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput-object p2, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput p3, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    return-void
.end method

.method private forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p1, p2, :cond_0

    return v6

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return v5

    :cond_2
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    return v5

    :cond_3
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_7

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-eq v3, v4, :cond_5

    :cond_4
    return v5

    :cond_5
    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-ne v3, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    instance-of v2, p1, Lcom/android/phone/utils/VoiceMailProviderSettings;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/phone/utils/VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v2, v0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/utils/VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
