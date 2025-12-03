package entity;

import java.util.Date;

public class MembershipCard {
    private int cardId;
    private int memberId;
    private String cardType; // 'yearly' or 'monthly'
    private Date startDate;
    private Date endDate;
    private String cardStatus; // 'active','inactive','expired'

    public MembershipCard() {
    }

    public MembershipCard(int cardId, int memberId, String cardType, Date startDate, Date endDate, String cardStatus) {
        this.cardId = cardId;
        this.memberId = memberId;
        this.cardType = cardType;
        this.startDate = startDate;
        this.endDate = endDate;
        this.cardStatus = cardStatus;
    }

    public int getCardId() {
        return cardId;
    }

    public void setCardId(int cardId) {
        this.cardId = cardId;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getCardStatus() {
        return cardStatus;
    }

    public void setCardStatus(String cardStatus) {
        this.cardStatus = cardStatus;
    }

    @Override
    public String toString() {
        return "MembershipCard{" +
                "cardId=" + cardId +
                ", memberId=" + memberId +
                ", cardType='" + cardType + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", cardStatus='" + cardStatus + '\'' +
                '}';
    }

}
