import { LightningElement} from 'lwc';

export default class ParentCmp extends LightningElement {
    namevalue;
    handleChange(event){
        this.namevalue = event.target.value;
    }
}