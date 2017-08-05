.class public Lcom/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardUtils$DecoderException;,
        Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/vcard/VCardUtils$TextUtilsPort;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "PAGER"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "HOME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CELL"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "OTHER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CALLBACK"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "TTY-TDD"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ASSISTANT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "VOICE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-GOOGLE-TALK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-WHATSAPP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-FACEBOOK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "MOBILE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u643a\u5e2f"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\uff79\uff72\uff80\uff72"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/Character;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    const/16 v0, 0x3a

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    const/16 v3, 0x20

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    const/16 v0, 0x3b

    const/16 v1, 0x3a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v1, v2, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    if-eq v1, v5, :cond_1

    if-eqz v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v5

    :cond_0
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static constructListFromIMValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v7, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x4e

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    const/16 v10, 0x5c

    if-ne v1, v10, :cond_7

    add-int/lit8 v10, v4, -0x1

    if-ge v3, v10, :cond_7

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_1

    const/16 v10, 0x53

    if-eq v8, v10, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v8, 0x46

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInSecondAreaJIS(C)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v8, 0x53

    goto :goto_1

    :cond_2
    const/16 v8, 0x4e

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v8, 0x46

    goto :goto_1

    :cond_3
    const/16 v8, 0x4e

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "vCard"

    const-string/jumbo v11, "Unknown vCard type"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v6}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_7
    const/16 v10, 0x3b

    if-ne v1, v10, :cond_9

    if-ge v7, v12, :cond_8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-lt v7, v12, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x9

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return-object v5

    :cond_b
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4e -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method public static constructListFromRawValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, v16

    :goto_0
    if-lez v7, :cond_0

    add-int/lit8 v22, v7, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v22, 0x3b

    move/from16 v0, v22

    if-ne v4, v0, :cond_0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    sub-int v22, v16, v5

    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    sub-int v22, v16, v5

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v22, 0x3b

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v22, 0x5c

    move/from16 v0, v22

    if-ne v4, v0, :cond_7

    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_7

    add-int/lit8 v22, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static/range {p2 .. p2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-static {v14}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v21

    :goto_3
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-static {v14}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v22

    if-nez v22, :cond_5

    const-string/jumbo v22, "vCard"

    const-string/jumbo v23, "Unknown vCard type"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v14}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/16 v22, 0x3b

    move/from16 v0, v22

    if-ne v4, v0, :cond_8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v22, "vnd.android.cursor.item/relation"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v6, v0, :cond_a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sub-int v22, v10, v5

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v22, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    const-string/jumbo v23, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v22, ";"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v12

    :cond_a
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v6, v0, :cond_11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v8, 0x2

    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_b

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string/jumbo v23, "0"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_b
    const/4 v7, 0x0

    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_10

    if-nez v7, :cond_d

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_d
    if-ge v7, v8, :cond_e

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_e
    if-ne v7, v8, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_f
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v13

    :cond_11
    return-object v11
.end method

.method public static constructListFromShiftJisValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x4e

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    const/16 v8, 0x5c

    if-ne v1, v8, :cond_7

    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    const/16 v8, 0x53

    if-eq v6, v8, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v6, 0x46

    goto :goto_1

    :sswitch_1
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInSecondAreaJIS(C)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v6, 0x53

    goto :goto_1

    :cond_1
    const/16 v6, 0x4e

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->isCheckCharInFirstAreaJIS(C)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v6, 0x46

    goto :goto_1

    :cond_2
    const/16 v6, 0x4e

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "vCard"

    const-string/jumbo v9, "Unknown vCard type"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v8, 0x3b

    if-ne v1, v8, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x4e -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "vCard"

    const-string/jumbo v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v2, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v1, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v13, 0x1

    if-nez p0, :cond_0

    return v13

    :cond_0
    const/16 v11, 0x41

    const/16 v10, 0x5b

    const/16 v7, 0x61

    const/16 v6, 0x7b

    const/16 v2, 0x30

    const/16 v1, 0x3a

    const/16 v3, 0x2d

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {v8, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v12, 0x61

    if-gt v12, v0, :cond_2

    const/16 v12, 0x7b

    if-lt v0, v12, :cond_5

    :cond_2
    const/16 v12, 0x41

    if-gt v12, v0, :cond_3

    const/16 v12, 0x5b

    if-lt v0, v12, :cond_5

    :cond_3
    const/16 v12, 0x30

    if-gt v12, v0, :cond_4

    const/16 v12, 0x3a

    if-lt v0, v12, :cond_5

    :cond_4
    const/16 v12, 0x2d

    if-eq v0, v12, :cond_5

    const/4 v12, 0x0

    return v12

    :cond_5
    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    :cond_6
    return v13
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    if-nez p0, :cond_0

    return v8

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    const/16 v7, 0x20

    if-gt v7, v2, :cond_2

    const/16 v7, 0x7e

    if-le v2, v7, :cond_3

    :cond_2
    const/4 v7, 0x0

    return v7

    :cond_3
    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    :cond_4
    return v8
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p0, :cond_0

    return v3

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_2
    return v3
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    if-nez p0, :cond_0

    return v5

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    return v4

    :cond_2
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SHIFT_JIS"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4}, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    const-string/jumbo v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public static final getAppropriateParser(I)Lcom/android/vcard/VCardParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/vcard/VCardParser_V40;

    invoke-direct {v0}, Lcom/android/vcard/VCardParser_V40;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    const-string/jumbo v1, "Version is not specified"

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLine([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    const/16 v18, -0x1

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz p0, :cond_1a

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v23

    if-eqz v23, :cond_12

    const-string/jumbo v23, "PREF"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v23, "FAX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v23, "CELL"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v23, "CAR"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v23, "RADIO"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/4 v11, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v23, "ASSISTANT"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v23, "WORK"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    const/4 v14, 0x1

    goto :goto_0

    :cond_8
    const-string/jumbo v23, "COMPANY-MAIN"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/4 v7, 0x1

    goto :goto_0

    :cond_9
    const-string/jumbo v23, "TLX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    const/4 v13, 0x1

    goto :goto_0

    :cond_a
    const-string/jumbo v23, "TTY-TDD"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v23, "MSG"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v23, "OTHER-FAX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v23, "X-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    if-gez v18, :cond_f

    const/16 v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    sget-object v23, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const-string/jumbo v23, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v23, 0x6

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    if-lez v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v3, v0, :cond_10

    :cond_e
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto/16 :goto_0

    :cond_f
    move-object/from16 v16, v20

    goto :goto_1

    :cond_10
    if-ltz v18, :cond_e

    if-nez v18, :cond_1

    goto :goto_2

    :cond_11
    if-gez v18, :cond_1

    const/16 v18, 0x0

    move-object/from16 v15, v16

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v23, "PREF"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v23, "FAX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v23, "CELL"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v23, "X-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    if-gez v18, :cond_17

    const/16 v23, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    sget-object v23, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const-string/jumbo v23, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v23, 0x6

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    if-lez v3, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v3, v0, :cond_18

    :cond_16
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto/16 :goto_0

    :cond_17
    move-object/from16 v16, v20

    goto :goto_3

    :cond_18
    if-ltz v18, :cond_16

    if-eqz v18, :cond_16

    const/16 v23, 0x7

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    goto :goto_4

    :cond_19
    if-gez v18, :cond_1

    const/16 v18, 0x0

    move-object/from16 v15, v16

    goto/16 :goto_0

    :cond_1a
    if-gez v18, :cond_1b

    if-eqz v2, :cond_28

    const/16 v18, 0xc

    :cond_1b
    :goto_5
    if-eqz v8, :cond_1c

    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    const/16 v18, 0x5

    :cond_1c
    :goto_6
    if-eqz v6, :cond_1d

    const/16 v18, 0x2

    :cond_1d
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v23

    if-eqz v23, :cond_27

    if-eqz v10, :cond_1e

    const/16 v18, 0xd

    :cond_1e
    if-eqz v5, :cond_1f

    const/16 v18, 0x9

    :cond_1f
    if-eqz v4, :cond_20

    const/16 v18, 0x13

    :cond_20
    if-eqz v11, :cond_21

    const/16 v18, 0xe

    :cond_21
    if-eqz v14, :cond_22

    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2b

    const/16 v18, 0x11

    :cond_22
    :goto_7
    if-eqz v7, :cond_23

    const/16 v18, 0xa

    :cond_23
    if-eqz v13, :cond_24

    const/16 v18, 0xf

    :cond_24
    if-eqz v12, :cond_25

    const/16 v18, 0x10

    :cond_25
    if-eqz v9, :cond_26

    const/16 v18, 0x14

    :cond_26
    if-eqz v4, :cond_27

    const/16 v18, 0x13

    :cond_27
    if-nez v18, :cond_2e

    return-object v15

    :cond_28
    const/16 v18, 0x1

    goto :goto_5

    :cond_29
    const/16 v23, 0x3

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a

    const/16 v18, 0x4

    goto :goto_6

    :cond_2a
    const/16 v23, 0x7

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v23

    if-nez v23, :cond_1c

    const/16 v18, 0xd

    goto :goto_6

    :cond_2b
    const/16 v23, 0x6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2c

    const/16 v18, 0x12

    goto :goto_7

    :cond_2c
    if-eqz v8, :cond_2d

    const/16 v18, 0x4

    goto :goto_7

    :cond_2d
    const/16 v18, 0x3

    goto :goto_7

    :cond_2e
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    return-object v23
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    array-length v0, p0

    if-lt v0, v6, :cond_1

    aget-byte v0, p0, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "GIF"

    return-object v0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v6

    const/16 v1, 0x47

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "PNG"

    return-object v0

    :cond_2
    array-length v0, p0

    if-lt v0, v4, :cond_3

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    aget-byte v0, p0, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "JPEG"

    return-object v0

    :cond_3
    return-object v5
.end method

.method private static isCheckCharInFirstAreaJIS(C)Z
    .locals 1

    const/16 v0, 0x81

    if-gt v0, p0, :cond_1

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xe0

    if-gt v0, p0, :cond_2

    const/16 v0, 0xef

    if-le p0, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isCheckCharInSecondAreaJIS(C)Z
    .locals 1

    const/16 v0, 0x40

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x80

    if-gt v0, p0, :cond_2

    const/16 v0, 0xfc

    if-le p0, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    const/16 v5, 0x20

    if-gt v5, v2, :cond_1

    const/16 v5, 0x7e

    if-le v2, v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    return v5

    :cond_2
    sget-object v5, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    :cond_3
    return v7
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v3, v0, :cond_1

    add-int/lit8 v21, v9, -0x1

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v15, v0, :cond_0

    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v15, v0, :cond_1

    :cond_0
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    if-eqz p1, :cond_3

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    :goto_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    array-length v0, v11

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    aget-object v10, v11, v21

    const-string/jumbo v23, "=0D=0A"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardUtils;->getLine([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v3, v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/16 v21, 0xd

    move/from16 v0, v21

    if-ne v3, v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v21, v9, -0x1

    move/from16 v0, v21

    if-ge v7, v0, :cond_4

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    aget-object v10, v12, v21

    const-string/jumbo v23, "="

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_c

    const-string/jumbo v21, "vCard"

    const-string/jumbo v22, "Given raw string is empty."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    :goto_7
    const/4 v4, 0x0

    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lcom/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_8
    const/16 v19, 0x0

    :try_start_2
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v21

    if-eqz v21, :cond_d

    const-string/jumbo v21, "SHIFT_JIS"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-static/range {v19 .. v19}, Lcom/android/vcard/unicode50to60ForDCMEmoji;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    return-object v21

    :catch_0
    move-exception v6

    const-string/jumbo v21, "vCard"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Failed to decode: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    goto :goto_7

    :catch_1
    move-exception v5

    const-string/jumbo v21, "vCard"

    const-string/jumbo v22, "DecoderException is thrown."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v17

    goto :goto_8

    :catch_2
    move-exception v6

    const-string/jumbo v21, "vCard"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Failed to encode: charset="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_9

    :cond_d
    return-object v19
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    aput-object p3, v0, v3

    aput-object p2, v0, v4

    aput-object p1, v0, v5

    :goto_0
    return-object v0

    :sswitch_0
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aput-object p3, v0, v3

    aput-object p2, v0, v4

    aput-object p1, v0, v5

    goto :goto_0

    :cond_0
    aput-object p1, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    goto :goto_0

    :sswitch_1
    aput-object p2, v0, v3

    aput-object p3, v0, v4

    aput-object p1, v0, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v9

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v5

    sub-int v8, v5, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x1

    const/4 v10, 0x0

    const/16 v12, 0x22

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0x7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v9, 0x20

    if-lt v3, v9, :cond_1

    if-ne v3, v12, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    array-length v11, p1

    move v9, v10

    :goto_2
    if-ge v9, v11, :cond_1

    aget v5, p1, v9

    if-ne v3, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    new-array v9, v13, [Ljava/lang/String;

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    const-string/jumbo v8, ""

    :cond_6
    :goto_3
    return-object v8

    :cond_7
    if-eqz v7, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
