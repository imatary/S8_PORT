.class public final Lcom/android/phone/utils/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
    }
.end annotation


# static fields
.field private static prevTextView:Landroid/widget/TextView;

.field public static prevWatcher:Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;


# direct methods
.method static synthetic -get0()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/android/phone/utils/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    sput-object p0, Lcom/android/phone/utils/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/utils/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    sput-object v0, Lcom/android/phone/utils/PhoneNumberFormatter;->prevWatcher:Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setPhoneNumberFormatting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-static {p0}, Lcom/android/phone/utils/PhoneNumberFormatter;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/utils/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/utils/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/utils/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-static {p0}, Lcom/android/phone/utils/PhoneNumberFormatter;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
