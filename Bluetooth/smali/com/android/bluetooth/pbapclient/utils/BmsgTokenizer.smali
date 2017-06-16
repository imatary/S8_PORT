.class public final Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;
.super Ljava/lang/Object;
.source "BmsgTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer$Property;
    }
.end annotation


# instance fields
.field private final mMatcher:Ljava/util/regex/Matcher;

.field private final mOffset:I

.field private mPos:I

.field private final mStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mPos:I

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mStr:Ljava/lang/String;

    iput p2, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mOffset:I

    const-string/jumbo v0, "(([^:]*):(.*))?\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mPos:I

    return-void
.end method


# virtual methods
.method public next()Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer$Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->next(Z)Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer$Property;

    move-result-object v0

    return-object v0
.end method

.method public next(Z)Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer$Property;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    iget v2, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mPos:I

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    return-object v4

    :cond_1
    new-instance v1, Ljava/text/ParseException;

    const-string/jumbo v2, "Property or empty line expected"

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->pos()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mPos:I

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer$Property;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public pos()I
    .locals 2

    iget v0, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mPos:I

    iget v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public remaining()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mStr:Ljava/lang/String;

    iget v1, p0, Lcom/android/bluetooth/pbapclient/utils/BmsgTokenizer;->mPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
