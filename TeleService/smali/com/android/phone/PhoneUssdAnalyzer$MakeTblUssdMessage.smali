.class Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;
.super Ljava/lang/Object;
.source "PhoneUssdAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUssdAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MakeTblUssdMessage"
.end annotation


# instance fields
.field private mInitialValueStr:[Ljava/lang/String;

.field private mMessageID:I

.field private mMessageStr:Ljava/lang/String;

.field private mRecoveryOperate:Z

.field private mRecoveryUssd:Ljava/lang/String;

.field private mUssdReceiveCode:Ljava/lang/String;

.field private mUssdSendCode:Ljava/lang/String;

.field private mValueStrRegular:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryOperate:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryUssd:Ljava/lang/String;

    return-object v0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mInitialValueStr:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryOperate:Z

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryUssd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mInitialValueStr:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryOperate:Z

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryUssd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    iput-boolean p4, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryOperate:Z

    iput-object p5, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryUssd:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mInitialValueStr:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryOperate:Z

    iput-object v0, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mRecoveryUssd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    iput-object p4, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mInitialValueStr:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkUssd(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    const-string/jumbo v4, "\\*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-nez v2, :cond_5

    return-object v5

    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdSendCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    const-string/jumbo v4, "\\*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    :goto_1
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageStr:Ljava/lang/String;

    if-nez v3, :cond_9

    iget v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageID:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_7
    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mUssdReceiveCode:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mMessageStr:Ljava/lang/String;

    return-object v3

    :cond_a
    return-object v5
.end method

.method public getUssdRegularNum()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    array-length v0, v1

    :cond_0
    return v0
.end method

.method public getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mValueStrRegular:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mInitialValueStr:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/PhoneUssdAnalyzer$MakeTblUssdMessage;->mInitialValueStr:[Ljava/lang/String;

    aget-object v1, v1, p2

    return-object v1

    :cond_1
    const-string/jumbo v1, ""

    return-object v1
.end method
