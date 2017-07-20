.class public Lcom/android/phone/additionalservice/RegisterUSSD;
.super Landroid/app/Activity;
.source "RegisterUSSD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/additionalservice/RegisterUSSD$1;,
        Lcom/android/phone/additionalservice/RegisterUSSD$AppState;,
        Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;,
        Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;,
        Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues:[I

.field private static final synthetic -com-android-phone-additionalservice-RegisterUSSD$EditClassSwitchesValues:[I

.field private static FROM:[Ljava/lang/String;

.field static sPatternUSSD:Ljava/util/regex/Pattern;


# instance fields
.field editCode:Landroid/widget/EditText;

.field editText:Landroid/widget/EditText;

.field emptyText:Landroid/widget/LinearLayout;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field listView:Landroid/widget/ListView;

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRegisterUssdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

.field private registerUssdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/view/View;

.field selectAllLayout:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/phone/additionalservice/RegisterUSSD;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/additionalservice/RegisterUSSD;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/additionalservice/RegisterUSSD;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mTelMan:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->-com-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->-com-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->values()[Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->-com-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-phone-additionalservice-RegisterUSSD$EditClassSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->-com-android-phone-additionalservice-RegisterUSSD$EditClassSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->-com-android-phone-additionalservice-RegisterUSSD$EditClassSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->values()[Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->CANNOT_SELECT:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->USSD_CODE:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->-com-android-phone-additionalservice-RegisterUSSD$EditClassSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/phone/additionalservice/RegisterUSSD;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$AppState;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/additionalservice/RegisterUSSD;Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/additionalservice/RegisterUSSD;->alertdialogRegisterUSSD(Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/additionalservice/RegisterUSSD;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/additionalservice/RegisterUSSD;->deleteRegisterUSSD(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/additionalservice/RegisterUSSD;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/additionalservice/RegisterUSSD;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/additionalservice/RegisterUSSD;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->saveRegisterUSSD()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->sPatternUSSD:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "registerussd_service_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "registerussd_ussd_code"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/additionalservice/RegisterUSSD;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/additionalservice/RegisterUSSD$1;

    invoke-direct {v0, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$1;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    iput-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    return-void
.end method

.method private RegisterUSSDEventInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/additionalservice/RegisterUSSD$3;

    invoke-direct {v1, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$3;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/additionalservice/RegisterUSSD$4;

    invoke-direct {v1, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$4;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private RegisterUSSDLayoutInit()V
    .locals 4

    const v1, 0x7f10021c

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10021d

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAll:Landroid/widget/LinearLayout;

    const v1, 0x7f10021f

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllCheck:Landroid/view/View;

    const v1, 0x7f100222

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    const v1, 0x7f100221

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->emptyText:Landroid/widget/LinearLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->factory:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->factory:Landroid/view/LayoutInflater;

    const v2, 0x7f0400b6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    const v1, 0x7f10021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private RegisterUSSDSetInitValue()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getRegisterUSSD()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->showRegisterUSSD(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->emptyText:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :cond_1
    new-instance v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    const v3, 0x7f0400e8

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private addRegisterUSSD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "registerussd_service_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "registerussd_ussd_code"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private alertdialogRegisterUSSD(Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V
    .locals 8

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->factory:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100219

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    const v3, 0x7f10021b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v3, v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v3, v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->code:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/phone/additionalservice/RegisterUSSD;->-getcom-android-phone-additionalservice-RegisterUSSD$EditClassSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0ad3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/additionalservice/RegisterUSSD$8;

    invoke-direct {v3, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$8;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    const v4, 0x7f0d0511

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/additionalservice/RegisterUSSD$9;

    invoke-direct {v3, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$9;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    const v4, 0x7f0d050d

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/phone/additionalservice/RegisterUSSD$10;

    invoke-direct {v3, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$10;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/phone/additionalservice/RegisterUSSD$11;

    invoke-direct {v3, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$11;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/additionalservice/RegisterUSSD$12;

    invoke-direct {v4, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$12;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->code:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private deleteRegisterUSSD(I)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getRegisterUSSD()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private saveRegisterUSSD()V
    .locals 14

    const-wide/16 v12, 0xc8

    const v11, 0x7f0d05c4

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :goto_0
    iput-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const v6, 0x7f0d0acc

    invoke-virtual {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->displayToast(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/phone/additionalservice/RegisterUSSD$13;

    invoke-direct {v7, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$13;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v6, v7, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    sget-object v6, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    goto :goto_0

    :cond_2
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/phone/additionalservice/RegisterUSSD;->sPatternUSSD:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v6, v6, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->code:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->displayToast(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_3
    const v6, 0x7f0d0ace

    invoke-virtual {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->displayToast(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/phone/additionalservice/RegisterUSSD$14;

    invoke-direct {v7, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$14;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v6, v7, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget v4, v6, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->id:I

    invoke-direct {p0, v3, v5, v4}, Lcom/android/phone/additionalservice/RegisterUSSD;->updateRegisterUSSD(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    new-instance v8, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    invoke-direct {v8, v4, v3, v5}, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput v10, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    :goto_1
    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    invoke-virtual {v6}, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->notifyDataSetInvalidated()V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_5

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object v6, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iput-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->invalidateOptionsMenu()V

    return-void

    :cond_6
    invoke-direct {p0, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editCode:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->displayToast(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v3, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->addRegisterUSSD(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    invoke-direct {v7, v0, v3, v5}, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private showRegisterUSSD(Landroid/database/Cursor;)V
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    invoke-direct {v6, v1, v4, v0}, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    return-void
.end method

.method private updateRegisterUSSD(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "registerussd_service_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "registerussd_ussd_code"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "Configuration"

    const-string/jumbo v1, "changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0400b5

    invoke-virtual {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->setContentView(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->RegisterUSSDLayoutInit()V

    invoke-direct {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->RegisterUSSDSetInitValue()V

    invoke-direct {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->RegisterUSSDEventInit()V

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v7, "## RegisterUSSD ##"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCreateDialog() id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mSelectedItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    return-object v12

    :sswitch_0
    iget v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    if-nez v7, :cond_0

    return-object v12

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/CharSequence;

    const v7, 0x7f0d050e

    invoke-virtual {p0, v7}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v10

    const v7, 0x7f0d0510

    invoke-virtual {p0, v7}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v11

    iget-object v7, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v7, v7, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/additionalservice/RegisterUSSD$5;

    invoke-direct {v7, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$5;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v7, Lcom/android/phone/additionalservice/RegisterUSSD$6;

    invoke-direct {v7, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$6;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v2

    :sswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v7, 0x7f0d0aa4

    invoke-virtual {p0, v7}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v1

    :sswitch_2
    const v6, 0x7f0d0332

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d050c

    invoke-virtual {p0, v7}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/phone/additionalservice/RegisterUSSD$7;

    invoke-direct {v8, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$7;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x384 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "## RegisterUSSD ##"

    const-string/jumbo v1, "onCreateOptionsMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const v1, 0x7f0d050d

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0d050c

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020007

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :goto_0
    iput-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->invalidateOptionsMenu()V

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    return v3

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.additionalservice.AdditionalService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->finish()V

    :cond_0
    return v4

    :sswitch_1
    iput v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mSelectedItem:I

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;

    invoke-direct {p0, v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->alertdialogRegisterUSSD(Lcom/android/phone/additionalservice/RegisterUSSD$EditClass;)V

    return v4

    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iput-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->invalidateOptionsMenu()V

    :cond_1
    return v4

    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->softkeyLeftRun(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->invalidateOptionsMenu()V

    :cond_2
    return v4

    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/phone/additionalservice/RegisterUSSD;->softkeyRightRun(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/phone/additionalservice/RegisterUSSD;->invalidateOptionsMenu()V

    :cond_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const v6, 0x7f0d050f

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {}, Lcom/android/phone/additionalservice/RegisterUSSD;->-getcom-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues()[I

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {v5}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    const v2, 0x7f0d0510

    invoke-virtual {p0, v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v5, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v2, v5, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v6, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v2, v6, :cond_4

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v6, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->DELETE_CHECK:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v5, v6, :cond_3

    move v4, v3

    :cond_3
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_2

    :pswitch_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/phone/additionalservice/RegisterUSSD;->-getcom-android-phone-additionalservice-RegisterUSSD$AppStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/additionalservice/RegisterUSSD$2;

    invoke-direct {v1, p0}, Lcom/android/phone/additionalservice/RegisterUSSD$2;-><init>(Lcom/android/phone/additionalservice/RegisterUSSD;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUssdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget v0, v3, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->id:I

    invoke-direct {p0, v0}, Lcom/android/phone/additionalservice/RegisterUSSD;->deleteRegisterUSSD(I)V

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v3, "RegisterUSSD"

    const-string/jumbo v4, "softkeyLeftRun - no item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v3, 0x7f0d05c3

    invoke-virtual {p0, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :goto_1
    iput-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    sget-object v4, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    sget-object v3, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->selectAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->registerUSSDAdapter:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mRegisterUssdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    :goto_0
    iput-object v0, p0, Lcom/android/phone/additionalservice/RegisterUSSD;->mState:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    goto :goto_0
.end method
