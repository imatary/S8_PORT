.class Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/utils/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextWatcherLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;
    .locals 2

    new-instance v0, Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    iget-object v1, p0, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/phone/utils/PhoneNumberFormatter;->prevWatcher:Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/utils/PhoneNumberFormatter;->-get0()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/utils/PhoneNumberFormatter;->-get0()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/PhoneNumberFormatter;->prevWatcher:Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sput-object p1, Lcom/android/phone/utils/PhoneNumberFormatter;->prevWatcher:Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    iget-object v0, p0, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/phone/utils/PhoneNumberFormatter;->-set0(Landroid/widget/TextView;)Landroid/widget/TextView;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;

    invoke-virtual {p0, p1}, Lcom/android/phone/utils/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->onPostExecute(Lcom/android/phone/utils/AltPhoneNumberFormattingTextWatcher;)V

    return-void
.end method
