.class Lcom/android/phone/operator/kor/LGTCountryList$1;
.super Ljava/lang/Object;
.source "LGTCountryList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTCountryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTCountryList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/LGTCountryList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 14

    new-instance v9, Lcom/android/phone/operator/kor/LGTRoamingData;

    iget-object v10, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-virtual {v10}, Lcom/android/phone/operator/kor/LGTCountryList;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/phone/operator/kor/LGTRoamingData;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v10, "a"

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v9, v0}, Lcom/android/phone/operator/kor/LGTRoamingData;->getCountry(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v10, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-virtual {v10}, Lcom/android/phone/operator/kor/LGTCountryList;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ko_KR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "name_kor"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_1
    const-string/jumbo v10, "country_num"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    new-instance v8, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/phone/operator/kor/LGTCountryList;->-get0()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v10, "("

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v10, ")"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v12, v13, v11}, Lcom/android/phone/operator/kor/LGTCountryList;->-wrap0(Lcom/android/phone/operator/kor/LGTCountryList;JLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "name"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    iget-object v11, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-static {v10, v11}, Lcom/android/phone/operator/kor/LGTCountryList;->-set1(Lcom/android/phone/operator/kor/LGTCountryList;Landroid/content/Context;)Landroid/content/Context;

    iget-object v10, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-static {v10, v8}, Lcom/android/phone/operator/kor/LGTCountryList;->-set0(Lcom/android/phone/operator/kor/LGTCountryList;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;

    iget-object v10, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    iget-object v11, p0, Lcom/android/phone/operator/kor/LGTCountryList$1;->this$0:Lcom/android/phone/operator/kor/LGTCountryList;

    invoke-static {v11}, Lcom/android/phone/operator/kor/LGTCountryList;->-get1(Lcom/android/phone/operator/kor/LGTCountryList;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/android/phone/operator/kor/LGTCountryList;->-wrap1(Lcom/android/phone/operator/kor/LGTCountryList;Landroid/content/Context;Landroid/database/MatrixCursor;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v9}, Lcom/android/phone/operator/kor/LGTRoamingData;->close()V

    return-void
.end method
