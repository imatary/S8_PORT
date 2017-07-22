.class public final Lcom/android/phone/AnswerMemo$Memos;
.super Ljava/lang/Object;
.source "AnswerMemo.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_ID_URI_BASE:Landroid/net/Uri;

.field public static final CONTENT_ID_URI_PATTERN:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.android.phone.answermemo/answer_memos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.android.phone.answermemo/answer_memos/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.android.phone.answermemo/answer_memos//#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_ID_URI_PATTERN:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
